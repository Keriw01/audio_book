import 'package:flutter/material.dart';
import 'package:testproject/home_page/favorite_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        foregroundColor: Colors.white,
        title: const Text('Home'),
        centerTitle: true,
        leading: Builder(builder: (context) {
          return IconButton(icon: const Icon(Icons.menu),
          onPressed: (){}
          ,);
        },),
        actions: [
          Builder(builder: (context) {
          return IconButton(icon: const Icon(Icons.search),
          onPressed: (){}
          ,);
        },),
        ],
      ),
      body:  const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FavoriteItems(),
          ],
        ),
      ),
    );
  }
}