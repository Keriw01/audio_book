import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/providers/favorites_provider.dart';
import 'package:testproject/widgets/custom_list_featured.dart';

class FeaturedSection extends StatelessWidget {
  final List<Book> books;
  const FeaturedSection({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoritesProvider>(context);
    List<Book> notFavoriteBooks = favoriteProvider.booksWithoutFavorite(books);

    if (notFavoriteBooks.isEmpty) {
      return const SizedBox();
    }

    if (favoriteProvider.isBookFavorite(books)) {
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
              'Pozostałe',
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
}
