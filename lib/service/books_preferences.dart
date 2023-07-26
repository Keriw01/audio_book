import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/models/books.dart';

class BooksPreferences {
  Future<bool> isCached(String href) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isDataCached$href') ?? false;
  }

  Future<void> save(List<Book> bookList, String href) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDataCached$href', true);
    Books books = Books(books: bookList);
    await prefs.setString(href, jsonEncode(books.toJson()));
  }

  Future<List<Book>> load(String href) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? booksJson = prefs.getString(href);
    if (booksJson != null) {
      Books booksCached = Books.fromJson(jsonDecode(booksJson));
      return booksCached.books;
    } else {
      return [];
    }
  }

  Future<void> clear() async {
    String prefix = 'https://wolnelektury.pl/api/collections';
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Set<String> keys = prefs.getKeys();

    for (String key in keys) {
      if (key.contains(prefix)) {
        await prefs.remove(key);
      }
    }
  }
}
