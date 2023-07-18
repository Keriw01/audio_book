import 'package:flutter/material.dart';

import '../models/book_item.dart';

class FavoriteItem extends StatelessWidget {
  final BookItem book;

  const FavoriteItem({super.key, required this.book});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 210,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/${book.imageUrl}",
                width: 200,
                //height: 0,
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
             Expanded(child: Text(book.title, style: Theme.of(context).textTheme.titleSmall)),
            ],
          ),
          const SizedBox(height: 2,),
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
      ),
    );
  }
}
