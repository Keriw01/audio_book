import 'package:flutter/material.dart';
import 'package:testproject/category_page/category_page.dart';
import 'package:testproject/home_page/home_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<String> _widgetTitle = <String>[
    'Strona główna',
    'Kategorie',
  ];

  void _onPageSwitch(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _widgetTitle.elementAt(_selectedIndex),
        ),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: PageView(
          scrollDirection: Axis.horizontal,
          onPageChanged: (index) => _onPageSwitch(index),
          children: const [
            HomePageContent(),
            CategoryPage(),
          ],
        ),
      ),
    );
  }
}
