import 'package:flutter/material.dart';
import 'package:testproject/pages/books/widgets/featured_item.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/widgets/custom_divider.dart';

/// FeaturedList is a widget that displays a list of featured books.
class FeaturedList extends StatelessWidget {
  final List<Book> books;
  const FeaturedList({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: books.length,
      separatorBuilder: (context, index) => const CustomDivider(),
      itemBuilder: (_, index) => FeaturedItem(book: books[index]),
    );
  }
}
