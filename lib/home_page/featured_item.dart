import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/favorites_cubit.dart';
import 'package:testproject/home_page/book_detail_page.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/widgets/heart_button.dart';
import 'package:testproject/widgets/loading_indicator.dart';

class FeaturedItem extends StatelessWidget {
  final Book book;
  const FeaturedItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final favoritesCubit = context.read<FavoritesCubit>();

    return RawMaterialButton(
      onPressed: () => BookDetailPage.navigate(context, book),
      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: book.simpleThumb,
            placeholder: (context, url) => const LoadingIndicator(),
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
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 130,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        book.title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        book.author,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
              ),
              HeartButton(
                onPressed: () => favoritesCubit.addToFavorites(book),
                isFavorite: false,
              )
            ],
          ),
        ],
      ),
    );
  }
}
