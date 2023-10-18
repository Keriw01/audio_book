import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/models/book_detail.dart';
import 'package:testproject/models/book_media.dart';
import 'package:testproject/widgets/loading_indicator.dart';
import 'package:audioplayers/audioplayers.dart';

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

  final AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();
  String audioUrl =
      'https://wolnelektury.pl/media/book/mp3/don-kichot-z-la-manchy_002_ksiega-1-rozdzial-2.mp3';

  @override
  void initState() {
    super.initState();
    // Preload the audio file for smoother playback
    audioCache.load(audioUrl);
  }

  @override
  Widget build(BuildContext context) {
    final List<BookMedia> mp3MediaList =
        filterMp3Media(widget.bookDetail.media);

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
                      imageUrl:
                          'https://wolnelektury.pl/media/book/cover_api_thumb/boska-komedia_QraETQp.jpg',
                      placeholder: (context, url) => const LoadingIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      alignment: Alignment.centerLeft,
                      width: 150,
                    ),
                    const SizedBox(height: 15),
                    Text(mp3MediaList.first.url),
                    IconButton(
                      onPressed: () {
                        audioPlayer.play(UrlSource(mp3MediaList.first.url));
                      },
                      icon: Icon(Icons.play_circle),
                    ),
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
