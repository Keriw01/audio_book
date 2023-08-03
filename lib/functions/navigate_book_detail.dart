import 'package:flutter/material.dart';
import 'package:testproject/home_page/book_detail_page.dart';
import 'package:testproject/models/book.dart';

Future<void> navigateToBookDetail({
  required BuildContext context,
  required String href,
  required Book book,
}) async {
  await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => BookDetailPage(
        href: href,
        book: book,
      ),
    ),
  );
}
