import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/home_page/featured_item.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/providers/favorites_provider.dart';
import 'package:testproject/widgets/custom_divider.dart';

class FeaturedSection extends StatelessWidget {
  final List<Book> books;
  const FeaturedSection({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoritesProvider>(context);

    if (favoriteProvider.isFavoriteBookInBooks(books)) {
      List<Book> booksWithoutFavorite =
          favoriteProvider.booksWithoutFavorite(books);

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'Pozostałe',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          ListView.separated(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            itemCount: booksWithoutFavorite.length,
            padding: const EdgeInsets.only(left: 10),
            separatorBuilder: (context, index) => const CustomDivider(),
            itemBuilder: (_, index) =>
                FeaturedItem(book: booksWithoutFavorite[index]),
          ),
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        ListView.separated(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: books.length,
          padding: const EdgeInsets.only(left: 10),
          separatorBuilder: (context, index) => const CustomDivider(),
          itemBuilder: (_, index) => FeaturedItem(book: books[index]),
        ),
      ],
    );
  }
}
