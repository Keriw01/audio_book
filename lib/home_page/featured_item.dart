import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/providers/favorites_provider.dart';
import 'package:testproject/widgets/heart_button.dart';

class FeaturedItem extends StatelessWidget {
  final Book book;
  const FeaturedItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = context.read<FavoritesProvider>();

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
                placeholder: (context, url) => const SizedBox(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                width: 100,
                alignment: Alignment.centerLeft,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 130,
                          child: Text(
                            book.title,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 130,
                          child: Text(
                            book.author,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  HeartButton(
                    onPressed: () => favoriteProvider.addToFavorites(book),
                    iconData: Icons.favorite_outline,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
