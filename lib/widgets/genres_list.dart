import 'package:flutter/material.dart';
import 'package:testproject/models/book_detail.dart';

class GenresList extends StatelessWidget {
  final BookDetail bookDetail;
  const GenresList({super.key, required this.bookDetail});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: bookDetail.genres.length,
      itemBuilder: (context, index) {
        return Text(
          bookDetail.genres[index].name.toString(),
          style: Theme.of(context).textTheme.labelSmall,
          textAlign: TextAlign.center,
        );
      },
    );
  }
}
