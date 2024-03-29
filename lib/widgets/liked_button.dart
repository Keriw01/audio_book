import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/favorites_cubit.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/styles/colors.dart';

class LikedButton extends StatelessWidget {
  final Book book;
  const LikedButton({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final isLiked =
        context.select((FavoritesCubit cubit) => cubit.isFavorited(book));

    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: 24,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: shadowColor,
                  blurRadius: 10,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 54,
          height: 48,
          child: ElevatedButton(
            onPressed: () {
              final favoritesCubit = context.read<FavoritesCubit>();
              isLiked
                  ? favoritesCubit.removeFromFavorites(book)
                  : favoritesCubit.addToFavorites(book);
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(0),
              shadowColor: shadowColor,
              elevation: 0,
              surfaceTintColor: whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: isLiked
                ? const Icon(Icons.favorite)
                : const Icon(
                    Icons.favorite_outline,
                    color: lightGreyColor,
                  ),
          ),
        ),
      ],
    );
  }
}
