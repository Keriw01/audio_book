import 'package:flutter/material.dart';
import 'package:testproject/category_page/category_page.dart';
import 'package:testproject/home_page/home_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<int> _selectedIndexNotifier = ValueNotifier<int>(0);

  static const List<String> _widgetTitle = <String>[
    'Strona główna',
    'Kategorie',
  ];

  @override
  void dispose() {
    _selectedIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ValueListenableBuilder(
          valueListenable: _selectedIndexNotifier,
          builder: (context, selectedIndex, child) =>
              Text(_widgetTitle.elementAt(selectedIndex)),
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
      body: PageView(
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) => _selectedIndexNotifier.value = index,
        children: const [
          HomePageContent(),
          CategoryPage(),
        ],
      ),
    );
  }
}
