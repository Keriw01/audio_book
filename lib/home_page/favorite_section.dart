import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/home_page/favorite_item.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/providers/favorites_provider.dart';

class FavoriteSection extends StatelessWidget {
  final List<Book> books;
  const FavoriteSection({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoritesProvider>(context);
    List<Book> favorites = favoriteProvider.booksFavorites(books);

    if (favorites.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 15,
            ),
            child: Text(
              'Twoje ulubione',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 320,
            child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
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
