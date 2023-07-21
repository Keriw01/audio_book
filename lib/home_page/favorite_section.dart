import 'package:flutter/material.dart';
import 'package:testproject/home_page/favorite_item.dart';
import 'package:testproject/providers/books_provider.dart';

class FavoriteSection extends StatelessWidget {
  final BooksProvider provider;
  const FavoriteSection({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dla ciebie',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 320,
          child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (_, index) => FavoriteItem(
              provider: provider,
              index: index,
            ),
          ),
        )
      ],
    );
  }
}
