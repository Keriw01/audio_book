import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/models/books.dart';
import 'package:testproject/service/locator.dart';

final prefs = getIt<SharedPreferences>();

class LikedPreferences {
  Future<void> save(List<Book> likedBooks) async {
    Books liked = Books(books: likedBooks);
    await prefs.setString('likedBooks', jsonEncode(liked.toJson()));
  }

  Future<List<Book>> load() async {
    String? likedJson = prefs.getString('likedBooks');
    if (likedJson != null) {
      Books liked = Books.fromJson(jsonDecode(likedJson));
      return liked.books;
    } else {
      return [];
    }
  }
}
