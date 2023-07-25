import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/providers/favorites_provider.dart';
import 'package:testproject/styles/colors.dart';

class FeaturedItem extends StatelessWidget {
  final Book book;
  const FeaturedItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoritesProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                imageUrl: book.simpleThumb,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                width: 100,
                alignment: Alignment.centerLeft,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 120,
                    child: Text(
                      book.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 120,
                    child: Text(
                      book.author,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 25,
                    height: 25,
                    padding: EdgeInsets.zero,
                    child: IconButton(
                      onPressed: () => favoriteProvider.addToFavorites(book),
                      icon: const Icon(
                        Icons.favorite_outline,
                        color: heartColor,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
