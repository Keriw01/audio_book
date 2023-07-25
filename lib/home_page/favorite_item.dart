import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/providers/favorites_provider.dart';
import 'package:testproject/styles/colors.dart';

class FavoriteItem extends StatelessWidget {
  final Book book;
  const FavoriteItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = context.read<FavoritesProvider>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                CachedNetworkImage(
                  imageUrl: book.simpleThumb,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  width: 150,
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: IconButton(
                    onPressed: () => favoriteProvider.removeFromFavorites(book),
                    icon: const Icon(
                      Icons.favorite,
                      color: heartColor,
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    book.title,
                    style: Theme.of(context).textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 2),
            Row(
              children: [
                Expanded(
                  child: Text(
                    book.author,
                    style: Theme.of(context).textTheme.headlineSmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
