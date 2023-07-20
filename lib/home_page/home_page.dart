import 'package:flutter/material.dart';
import 'package:testproject/category_page/category_page.dart';
import 'package:testproject/home_page/home_content.dart';

import '../app_bar_custom.dart';
import '../bottom_navigation_custom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePageContent(),
    CategoryPage()
  ];
  static const List<String> _widgetTitle = <String>['Home', 'Categories'];

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBarCustom(
          _widgetTitle.elementAt(_selectedIndex),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationCustom(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
