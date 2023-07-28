import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/models/books.dart';
import 'package:testproject/service/locator.dart';

final prefs = getIt<SharedPreferences>();

class FavoritesPreferences {
  Future<void> save(List<Book> favoriteBooks) async {
    Books favorites = Books(books: favoriteBooks);
    await prefs.setString('favoriteBooks', jsonEncode(favorites.toJson()));
  }

  Future<List<Book>> load() async {
    String? favoritesJson = prefs.getString('favoriteBooks');
    if (favoritesJson != null) {
      Books favorites = Books.fromJson(jsonDecode(favoritesJson));
      return favorites.books;
    } else {
      return [];
    }
  }
}
