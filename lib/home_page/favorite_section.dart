import 'package:flutter/material.dart';
import 'package:testproject/home_page/favorite_item.dart';
import 'package:testproject/models/book.dart';

class FavoriteSection extends StatelessWidget {
  final List<Book> books;
  const FavoriteSection({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 15,
          ),
          child: Text(
            'Twoje ulubione',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 320,
          child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: books.length > 4 ? 4 : books.length,
            itemBuilder: (_, index) => FavoriteItem(book: books[index]),
          ),
        ),
      ],
    );
  }
}
