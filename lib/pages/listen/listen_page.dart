import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:rxdart/rxdart.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/pages/listen/widgets/controls.dart';
import 'package:testproject/models/book_detail.dart';
import 'package:testproject/models/book_media.dart';
import 'package:testproject/models/position_data.dart';
import 'package:testproject/widgets/loading_indicator.dart';
import 'package:just_audio/just_audio.dart';

/// Listen Page used to display a given book with its cover, chapter name and multimedia buttons
@AutoRoute()
class ListenPage extends StatefulWidget {
  final BookDetail bookDetail;
  const ListenPage({super.key, required this.bookDetail});

  @override
  State<ListenPage> createState() => _ListenPageState();
}

class _ListenPageState extends State<ListenPage> {
  // Filter media list to include only MP3 files
  List<BookMedia> filterMp3Media(List<BookMedia> bookMediaList) {
    return bookMediaList.where((media) => media.type == 'mp3').toList();
  }

  late List<BookMedia> mp3MediaList = [];
  late List<AudioSource> audioSource = [];
  late AudioSource _playList;
  late AudioPlayer _audioPlayer;

  // Stream of information about the playback position
  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
        _audioPlayer.positionStream,
        _audioPlayer.bufferedPositionStream,
        _audioPlayer.durationStream,
        (position, bufferedPosition, duration) => PositionData(
          position,
          bufferedPosition,
          duration ?? Duration.zero,
        ),
      );

  @override
  void initState() {
    super.initState();
    mp3MediaList = filterMp3Media(widget.bookDetail.media);

    // Create audio sources from MP3 media
    mp3MediaList.asMap().forEach((index, mediaItem) {
      audioSource.add(
        AudioSource.uri(
          Uri.parse(mediaItem.url),
          tag: MediaItem(
            id: '$index',
            title: mediaItem.name,
            artist: mediaItem.artist,
            artUri: Uri.parse(widget.bookDetail.cover),
          ),
        ),
      );
    });

    // Create a playlist with audio sources
    _playList = ConcatenatingAudioSource(children: audioSource);

    _audioPlayer = AudioPlayer();
    _init();
  }

  Future<void> _init() async {
    // Set loop mode for continuous playback
    await _audioPlayer.setLoopMode(LoopMode.all);
    // Set audio source for the audio player
    await _audioPlayer.setAudioSource(_playList);
  }

  @override
  void dispose() {
    // Dispose of the audio player to release resources
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).nowPlaying),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const SizedBox(height: 20),
                StreamBuilder<SequenceState?>(
                  stream: _audioPlayer.sequenceStateStream,
                  builder: (context, snapshot) {
                    final state = snapshot.data;
                    if (state?.sequence.isEmpty ?? true) {
                      return const SizedBox();
                    }
                    final metaData = state!.currentSource!.tag as MediaItem;

                    // Display cached network image for the current media
                    return Column(
                      children: [
                        CachedNetworkImage(
                          imageUrl: metaData.artUri.toString(),
                          placeholder: (context, url) =>
                              const LoadingIndicator(),
                          errorWidget: (context, url, error) =>
                              const SizedBox(),
                          alignment: Alignment.centerLeft,
                          width: 200,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(metaData.artist.toString()),
                        Text(metaData.title),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                StreamBuilder<PositionData>(
                  stream: _positionDataStream,
                  builder: (context, snapshot) {
                    final positionData = snapshot.data;

                    // Display progress bar
                    return ProgressBar(
                      progress: positionData?.position ?? Duration.zero,
                      buffered: positionData?.bufferedPosition ?? Duration.zero,
                      total: positionData?.duration ?? Duration.zero,
                      onSeek: _audioPlayer.seek,
                    );
                  },
                ),

                // Display play controls (play, pause, skip)
                Controls(audioPlayer: _audioPlayer)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
