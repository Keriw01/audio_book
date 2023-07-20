import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page/home_page.dart';
import 'package:testproject/providers/collections_provider.dart';
import 'package:testproject/styles/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CollectionsProvider(),
      child: MaterialApp(
        title: 'Utwory',
        theme: customTheme,
        home: const HomePage(),
      ),
    );
  }
}
