import 'package:flutter/material.dart';
import 'package:testproject/themes/theme.dart';
import 'home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Voice',
      theme: customTheme,
      home: const HomePage(),
    );
  }
}
