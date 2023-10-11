import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/favorites_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/home_page/favorite_item.dart';
import 'package:testproject/models/book.dart';

class FavoriteSection extends StatelessWidget {
  final List<Book> books;
  const FavoriteSection({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    final favoritesCubit = context.read<FavoritesCubit>();
    List<Book> favorites = favoritesCubit.booksFavorites(books);

    if (favorites.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 15,
              bottom: 10,
            ),
            child: Text(
              S.of(context).yourFavorite,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          SizedBox(
            height: 255,
            child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              itemCount: favorites.length,
              itemBuilder: (_, index) => FavoriteItem(book: favorites[index]),
            ),
          ),
        ],
      );
    }

    return const SizedBox();
  }
}
