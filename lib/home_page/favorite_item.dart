import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/favorites_cubit.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/widgets/heart_button.dart';
import 'package:testproject/widgets/loading_indicator.dart';
import 'package:testproject/home_page/book_detail_page.dart';

class FavoriteItem extends StatelessWidget {
  final Book book;
  const FavoriteItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final favoritesCubit = context.read<FavoritesCubit>();

    return RawMaterialButton(
      onPressed: () => BookDetailPage.navigate(context, book),
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: 148,
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
                  ),
                  HeartButton(
                    onPressed: () => favoritesCubit.removeFromFavorites(book),
                    isFavorite: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 2),
            Text(
              book.title,
              style: Theme.of(context).textTheme.titleSmall,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
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
