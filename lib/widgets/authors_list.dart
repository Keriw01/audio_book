import 'package:flutter/material.dart';
import 'package:testproject/models/book_metadata.dart';

/// AuthorsList is a widget that displays a list of book authors.
class AuthorsList extends StatelessWidget {
  /// List of authors to be displayed in the widget.
  final List<BookMetadata> authors;
  const AuthorsList({super.key, required this.authors});

  @override
  Widget build(BuildContext context) {
    // Using ListView.builder to efficiently display a scrollable list of authors
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
