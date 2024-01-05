import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/models/books.dart';
import 'package:testproject/service/locator.dart';

// Access the SharedPreferences instance from the service locator
final prefs = getIt<SharedPreferences>();

/// Utility class for handling the caching of book data using SharedPreferences.
class BooksPreferences {
  /// Saves the list of books and the provided href to SharedPreferences.
  Future<void> save(List<Book> bookList, String href) async {
    // Set a flag indicating that data is cached for the specified href
    prefs.setBool('isDataCached$href', true);

    // Create a Books object with the provided list of books
    Books books = Books(books: bookList);

    // Encode and store the Books object as JSON using SharedPreferences
    await prefs.setString(href, jsonEncode(books.toJson()));
  }

  /// Loads the list of books associated with the provided href from SharedPreferences.
  /// Returns an empty list if no data is found.
  Future<List<Book>> load(String href) async {
    // Retrieve the JSON string from SharedPreferences based on the href
    String? booksJson = prefs.getString(href);

    // Decode the JSON string and return the list of books or an empty list if null
    if (booksJson != null) {
      Books booksCached = Books.fromJson(jsonDecode(booksJson));
      return booksCached.books;
    } else {
      return [];
    }
  }

  /// Clears cached data for collections by removing SharedPreferences entries
  /// with keys containing the specified prefix.
  Future<void> clear() async {
    // Define the prefix used to identify collection-related SharedPreferences entries
    String prefix = 'https://wolnelektury.pl/api/collections';

    // Retrieve all keys from SharedPreferences
    Set<String> keys = prefs.getKeys();

    // Iterate through keys and remove entries with the specified prefix
    for (String key in keys) {
      if (key.contains(prefix)) {
        await prefs.remove(key);
      }
    }
  }
}
