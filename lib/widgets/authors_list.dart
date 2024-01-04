import 'package:flutter/material.dart';
import 'package:testproject/models/book_metadata.dart';

class AuthorsList extends StatelessWidget {
  final List<BookMetadata> authors;
  const AuthorsList({super.key, required this.authors});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: authors.length,
      itemBuilder: (context, index) {
        return Text(
          authors[index].name,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        );
      },
    );
  }
}
