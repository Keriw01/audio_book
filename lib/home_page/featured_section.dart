import 'package:flutter/material.dart';
import 'package:testproject/home_page/featured_item.dart';
import 'package:testproject/providers/books_provider.dart';
import 'package:testproject/widgets/custom_divider.dart';

class FeaturedSection extends StatelessWidget {
  final BooksProvider provider;
  const FeaturedSection({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Wybrane',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        ListView.separated(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: provider.books.length,
          padding: const EdgeInsets.only(right: 15),
          separatorBuilder: (context, index) => const CustomDivider(),
          itemBuilder: (_, index) => FeaturedItem(
            provider: provider,
            index: index,
          ),
        ),
      ],
    );
  }
}
