import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:testproject/models/collection.dart';
import 'package:testproject/routes/app_router.dart';
import 'package:testproject/styles/colors.dart';

class CollectionItem extends StatelessWidget {
  final Collection collection;

  const CollectionItem({
    super.key,
    required this.collection,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 100,
      highlightColor: deepOrange.withOpacity(0.1),
      splashColor: seedColor.withOpacity(0.8),
      onTap: () => context.router.push(BooksRoute(collection: collection)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
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
