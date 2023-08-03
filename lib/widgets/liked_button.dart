import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/liked_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/models/book.dart';

class LikedButton extends StatelessWidget {
  final Book book;
  const LikedButton({
    super.key,
    required this.book,
  });

  void _listener(BuildContext context, LikedState state) {
    if (state is LikedError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).errorOccured + state.message),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LikedCubit, LikedState>(
      listener: _listener,
      builder: (context, state) {
        if (state is LikedLoaded) {
          final likedCubit = context.read<LikedCubit>();
          bool isLiked = likedCubit.isLiked(book);

          return Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton.icon(
              onPressed: () => isLiked
                  ? likedCubit.removeFromLiked(book)
                  : likedCubit.addToLiked(book),
              icon: const Icon(Icons.thumb_up),
              label: isLiked ? const Text('1') : const Text('0'),
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
