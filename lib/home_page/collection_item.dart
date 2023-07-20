import 'package:flutter/material.dart';
import 'package:testproject/styles/colors.dart';

import 'books_page.dart';

class CollectionItem extends StatelessWidget {
  final String title;
  final String href;
  final int index;

  const CollectionItem({
    super.key,
    required this.title,
    required this.href,
    required this.index,
  });

  Future<Future> navigateToBooksPage(BuildContext context) async {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BooksPage(
          title: title,
          href: href,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 100,
      highlightColor: deepOrange.withOpacity(0.1),
      splashColor: seedColor.withOpacity(0.8),
      onTap: () => navigateToBooksPage(context),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ]),
    );
  }
}
