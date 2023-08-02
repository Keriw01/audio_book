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
    return BlocConsumer<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        if (state is FavoritesLoaded) {
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

          List<Book> notFavoriteBooks =
              favoritesCubit.booksWithoutFavorite(books);

          if (notFavoriteBooks.isNotEmpty) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 15,
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

        return const SizedBox.shrink();
      },
      listener: (context, state) {
        if (state is FavoritesError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(S.of(context).errorOccured + state.message),
            ),
          );
        }
      },
    );
  }
}
