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
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        if (state is FavoritesLoaded) {
          final favoritesCubit = BlocProvider.of<FavoritesCubit>(context);
          List<Book> notFavoriteBooks =
              favoritesCubit.booksWithoutFavorite(books);
          List<Book> favorites = favoritesCubit.booksFavorites(books);

          if (notFavoriteBooks.isEmpty) {
            return const SizedBox();
          }

          if (favorites.isNotEmpty) {
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
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FeaturedList(books: books),
            ],
          );
        }
        if (state is FavoritesError) {
          WidgetsBinding.instance.addPostFrameCallback(
            (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Błąd podczas ładowania danych z pamięci!'),
                ),
              );
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
