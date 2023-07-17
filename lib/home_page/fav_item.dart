import 'package:flutter/material.dart';

import '../models/book_item.dart';

class FavItem extends StatelessWidget {
  final BookItem book;

  const FavItem({super.key, required this.book});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              "assets/images/${book.imageUrl}",
              width: 200,
              height: 100,
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: [
            Text(book.title, style: Theme.of(context).textTheme.titleSmall),
          ],
        ),
        Row(
          children: [
            Text("\$ ${book.priceActual} ", style: Theme.of(context).textTheme.displaySmall,),
            Text(
              "\$ ${book.priceWithDiscount}",
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        )
      ],
    );
  }
}
