import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/home_page/controls.dart';
import 'package:testproject/models/book_detail.dart';
import 'package:testproject/models/book_media.dart';
import 'package:testproject/models/position_data.dart';
import 'package:testproject/widgets/loading_indicator.dart';
import 'package:just_audio/just_audio.dart';

@AutoRoute()
class ListenPage extends StatefulWidget {
  final BookDetail bookDetail;
  const ListenPage({super.key, required this.bookDetail});

  @override
  State<ListenPage> createState() => _ListenPageState();
}

class _ListenPageState extends State<ListenPage> {
  List<BookMedia> filterMp3Media(List<BookMedia> bookMediaList) {
    return bookMediaList.where((media) => media.type == 'mp3').toList();
  }

  late List<BookMedia> mp3MediaList = [];
  late AudioPlayer _audioPlayer;

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

  String audioUrl =
      'https://wolnelektury.pl/media/book/mp3/don-kichot-z-la-manchy_002_ksiega-1-rozdzial-2.mp3';

  @override
  void initState() {
    super.initState();
    mp3MediaList = filterMp3Media(widget.bookDetail.media);
    _audioPlayer = AudioPlayer()..setUrl(mp3MediaList.first.url);
  }

  @override
  void dispose() {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    CachedNetworkImage(
                      imageUrl: widget.bookDetail.cover,
                      placeholder: (context, url) => const LoadingIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      alignment: Alignment.centerLeft,
                      width: 250,
                    ),
                    const SizedBox(height: 30),
                    StreamBuilder<PositionData>(
                      stream: _positionDataStream,
                      builder: (context, snapshot) {
                        final positionData = snapshot.data;
                        return ProgressBar(
                          progress: positionData?.position ?? Duration.zero,
                          buffered:
                              positionData?.bufferedPosition ?? Duration.zero,
                          total: positionData?.duration ?? Duration.zero,
                          onSeek: _audioPlayer.seek,
                        );
                      },
                    ),
                    Controls(audioPlayer: _audioPlayer)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
