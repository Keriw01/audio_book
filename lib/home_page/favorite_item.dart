import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:testproject/providers/books_provider.dart';

class FavoriteItem extends StatelessWidget {
  final BooksProvider provider;
  final int index;
  const FavoriteItem({super.key, required this.provider, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        width: 150,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CachedNetworkImage(
            imageUrl: provider.books[index].simpleThumb,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            width: 150,
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 10),
          Row(children: [
            Expanded(
              child: Text(
                provider.books[index].title,
                style: Theme.of(context).textTheme.titleSmall,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
          ]),
          const SizedBox(height: 2),
          Row(children: [
            Expanded(
              child: Text(
                provider.books[index].author,
                style: Theme.of(context).textTheme.headlineSmall,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
