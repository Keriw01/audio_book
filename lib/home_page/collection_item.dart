import 'package:flutter/material.dart';
import 'package:testproject/models/collection.dart';
import 'package:testproject/styles/colors.dart';
import 'package:testproject/home_page/books_page.dart';

class CollectionItem extends StatelessWidget {
  final Collection collection;

  const CollectionItem({super.key, required this.collection});

  Future<Future> navigateToBooksPage(BuildContext context) async {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BooksPage(
          collection: collection,
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
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 15, 0, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              collection.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
