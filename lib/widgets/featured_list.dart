import 'package:flutter/material.dart';
import 'package:testproject/home_page/featured_item.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/widgets/custom_divider.dart';

class FeaturedList extends StatelessWidget {
  final List<Book> books;
  const FeaturedList({
    super.key,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: books.length,
      padding: const EdgeInsets.only(left: 10),
      separatorBuilder: (context, index) => const CustomDivider(),
      itemBuilder: (_, index) => FeaturedItem(book: books[index]),
    );
  }
}
