import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/favorites_cubit.dart';
import 'package:testproject/models/book.dart';

class LikedButton extends StatelessWidget {
  final Book book;
  const LikedButton({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    final favoritesCubit =
        BlocProvider.of<FavoritesCubit>(context, listen: true);
    bool isLiked = favoritesCubit.isFavorited(book);

    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: () => isLiked
            ? favoritesCubit.removeFromFavorites(book)
            : favoritesCubit.addToFavorites(book),
        child: isLiked
            ? const Icon(Icons.thumb_up)
            : const Icon(Icons.thumb_up_outlined),
      ),
    );
  }
}
