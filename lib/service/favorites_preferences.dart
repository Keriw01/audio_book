import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/models/favorites.dart';

class FavoritesPreferences {
  Future<void> save(List<Book> favoriteBooks) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Favorites favorites = Favorites(books: favoriteBooks);
    await prefs.setString('favoriteBooks', jsonEncode(favorites.toJson()));
  }

  Future<List<Book>> load() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? favoritesJson = prefs.getString('favoriteBooks');
    if (favoritesJson != null) {
      Favorites favorites = Favorites.fromJson(jsonDecode(favoritesJson));
      return favorites.books;
    } else {
      return [];
    }
  }
}
