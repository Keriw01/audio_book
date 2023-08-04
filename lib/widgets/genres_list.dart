import 'package:flutter/material.dart';
import 'package:testproject/models/book_metadata.dart';

class GenresList extends StatelessWidget {
  final List<BookMetadata> genres;
  const GenresList({super.key, required this.genres});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
