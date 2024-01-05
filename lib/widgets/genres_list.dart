import 'package:flutter/material.dart';
import 'package:testproject/models/book_metadata.dart';

/// Genres List widget displays a list of book genres.
class GenresList extends StatelessWidget {
  final List<BookMetadata> genres;
  const GenresList({super.key, required this.genres});

  @override
  Widget build(BuildContext context) {
    // Using ListView.builder to efficiently build a scrollable list of genres
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: genres.length,
      itemBuilder: (context, index) {
        return Text(
          genres[index].name,
          style: Theme.of(context).textTheme.labelSmall,
          textAlign: TextAlign.center,
        );
      },
    );
  }
}
