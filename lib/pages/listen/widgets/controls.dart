import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:testproject/styles/colors.dart';

/// Controls widget provides playback control buttons for an audio player.
class Controls extends StatelessWidget {
  const Controls({super.key, required this.audioPlayer});
  // The audio player instance used for playback control.
  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Button to skip to the previous audio track
        IconButton(
          onPressed: audioPlayer.seekToPrevious,
          iconSize: 80,
          color: primaryColor,
          icon: const Icon(Icons.skip_previous_rounded),
        ),
        // StreamBuilder to dynamically update the play/pause button based on player state
        StreamBuilder<PlayerState>(
          stream: audioPlayer.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            final playing = playerState?.playing;

            // Display play button if not currently playing
            if (!(playing ?? false)) {
              return IconButton(
                onPressed: audioPlayer.play,
                iconSize: 80,
                color: primaryColor,
                icon: const Icon(Icons.play_arrow_rounded),
              );
            }

            // Display pause button if playing and not in completed state
            else if (processingState != ProcessingState.completed) {
              return IconButton(
                onPressed: audioPlayer.pause,
                iconSize: 80,
                color: primaryColor,
                icon: const Icon(Icons.pause_rounded),
              );
            }

            // Display play button if in completed state
            return const Icon(
              Icons.play_arrow,
              size: 80,
              color: primaryColor,
            );
          },
        ),

        // Button to skip to the next audio track
        IconButton(
          onPressed: audioPlayer.seekToNext,
          iconSize: 80,
          color: primaryColor,
          icon: const Icon(Icons.skip_next_rounded),
        ),
      ],
    );
  }
}
