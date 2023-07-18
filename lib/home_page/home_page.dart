import 'package:flutter/material.dart';
import 'package:testproject/home_page/choose_kind_section.dart';
import 'package:testproject/home_page/favorite_section.dart';
import 'package:testproject/home_page/featured_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              );
            },
          ),
          actions: [
            Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                );
              },
            ),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FavoriteItems(),
                ChooseKind(),
                SizedBox(
                  height: 10,
                ),
                FeaturedSection()
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, spreadRadius: -8, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), label: "Kategorie"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.library_books), label: "Biblioteka"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profil"),
              ]),
            )));
  }
}
