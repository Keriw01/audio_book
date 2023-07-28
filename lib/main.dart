import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/home_page/home_page.dart';
import 'package:testproject/providers/collections_provider.dart';
import 'package:testproject/providers/favorites_provider.dart';
import 'package:testproject/service/books_preferences.dart';
import 'package:testproject/service/locator.dart';
import 'package:testproject/styles/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  await getIt<BooksPreferences>().clear();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CollectionsProvider()),
        ChangeNotifierProvider(create: (_) => FavoritesProvider())
      ],
      child: MaterialApp(
        title: 'Utwory',
        theme: customTheme,
        home: const HomePage(),
      ),
    );
  }
}
