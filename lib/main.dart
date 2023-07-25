import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/home_page/home_page.dart';
import 'package:testproject/providers/collections_provider.dart';
import 'package:testproject/providers/favorites_provider.dart';
import 'package:testproject/styles/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await clearSharedPreferencesWithPrefix(
      'https://wolnelektury.pl/api/collections');
  runApp(const MyApp());
}

Future<void> clearSharedPreferencesWithPrefix(String prefix) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  Set<String> keys = prefs.getKeys();

  for (String key in keys) {
    if (key.contains(prefix)) {
      await prefs.remove(key);
    }
  }
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
