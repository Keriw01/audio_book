import 'package:flutter/material.dart';
import 'books_list.dart';
import 'fav_item.dart';

class FavoriteItems extends StatefulWidget {
  const FavoriteItems({super.key});

  @override
  State<FavoriteItems> createState() => _FavoriteItemsState();
}

class _FavoriteItemsState extends State<FavoriteItems> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text("For you", style: Theme.of(context).textTheme.headlineSmall,),
            const SizedBox(height: 10,),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  for(int i=0; i<books.length; i++)
                  FavItem(book: books[i])
                ],
              )),
          ],
        ),
      ));
  }
}