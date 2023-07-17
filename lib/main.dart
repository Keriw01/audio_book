import 'package:flutter/material.dart';
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
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 136, 0),
          ),
          useMaterial3: true,
          textTheme: const TextTheme(
            titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            headlineSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            displaySmall: TextStyle(fontSize: 12, color: Colors.deepOrange),
            displayMedium: TextStyle(fontSize: 12, color: Colors.grey, decoration: TextDecoration.lineThrough),
          )),
      home: const HomePage(),
    );
  }
}
