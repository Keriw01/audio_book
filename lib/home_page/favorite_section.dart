import 'package:flutter/material.dart';
import 'books_list.dart';
import 'favorite_item.dart';

class FavoriteItems extends StatelessWidget {
  const FavoriteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Dla ciebie",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            height: 400,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                for (int i = 0; i < books.length; i++)
                  FavoriteItem(book: books[i])
              ],
            )),
      ],
    );
  }
}
