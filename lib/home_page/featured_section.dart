import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/favorites_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/widgets/featured_list.dart';

class FeaturedSection extends StatelessWidget {
  final List<Book> books;
  const FeaturedSection({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    final favoritesCubit = context.read<FavoritesCubit>();
    List<Book> favorites = favoritesCubit.booksFavorites(books);

    if (favorites.isEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FeaturedList(books: books),
        ],
      );
    }

    List<Book> notFavoriteBooks = favoritesCubit.booksWithoutFavorite(books);

    if (notFavoriteBooks.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
              bottom: 5,
            ),
            child: Text(
              S.of(context).others,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          FeaturedList(books: notFavoriteBooks),
        ],
      );
    }

    return const SizedBox();
  }
}
