import 'package:flutter/material.dart';
import 'package:testproject/models/book_detail.dart';

class AuthorsList extends StatelessWidget {
  final BookDetail bookDetail;
  const AuthorsList({super.key, required this.bookDetail});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: bookDetail.authors.length,
      itemBuilder: (context, index) {
        return Text(
          bookDetail.authors[index].name,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        );
      },
    );
  }
}
