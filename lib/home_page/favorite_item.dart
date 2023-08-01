import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/cubit/favorites_cubit.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/widgets/heart_button.dart';
import 'package:testproject/widgets/loading_indicator.dart';

class FavoriteItem extends StatelessWidget {
  final Book book;
  const FavoriteItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final favoritesCubit = context.read<FavoritesCubit>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SizedBox(
        width: 156,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CachedNetworkImage(
                    imageUrl: book.simpleThumb,
                    placeholder: (context, url) => const LoadingIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    alignment: Alignment.centerLeft,
                  ),
                  HeartButton(
                    onPressed: () => favoritesCubit.removeFromFavorites(book),
                    isFavorite: true,
                  ),
                ],
              ),
            ),
            Text(
              book.title,
              style: Theme.of(context).textTheme.titleSmall,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            Text(
              book.author,
              style: Theme.of(context).textTheme.headlineSmall,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
