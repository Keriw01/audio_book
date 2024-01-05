import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/pages/books/cubit/favorites_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/pages/books/widgets/favorite_item.dart';
import 'package:testproject/models/book.dart';

/// Favorite Section is a widget displaying a horizontal list of favorite books.
class FavoriteSection extends StatelessWidget {
  final List<Book> books;
  const FavoriteSection({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    final favoritesCubit = context.read<FavoritesCubit>();
    List<Book> favorites = favoritesCubit.booksFavorites(books);

    // If there are favorite books, display the FavoriteSection
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

    // If there are no favorite books, return an empty SizedBox
    return const SizedBox();
  }
}
