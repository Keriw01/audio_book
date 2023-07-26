import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/models/favorites_cached.dart';

class FavoritesProvider with ChangeNotifier {
  List<Book> _favoriteBooks = [];
  List<Book> get favorite => _favoriteBooks;

  FavoritesProvider() {
    _loadFavoriteBookListFromCache();
  }

  void addToFavorites(Book book) {
    _favoriteBooks.add(book);
    _saveFavoriteBooksToCache(_favoriteBooks);
    notifyListeners();
  }

  void removeFromFavorites(Book book) {
    _favoriteBooks.remove(book);
    _saveFavoriteBooksToCache(_favoriteBooks);
    notifyListeners();
  }

  bool isBookFavorite(List<Book> books) {
    return _favoriteBooks.any(
      (searchBook) =>
          books.any((mainBook) => mainBook.title == searchBook.title),
    );
  }

  List<Book> booksWithoutFavorite(List<Book> books) {
    List<Book> booksWithoutFavorite =
        books.where((book) => !_favoriteBooks.contains(book)).toList();
    return booksWithoutFavorite;
  }

  List<Book> booksFavorites(List<Book> books) {
    List<Book> favorites =
        books.where((book) => _favoriteBooks.contains(book)).toList();
    return favorites;
  }

  Future<void> _saveFavoriteBooksToCache(List<Book> favoriteBooks) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    FavoritesCached favorites = FavoritesCached(books: favoriteBooks);
    await prefs.setString('favoriteBooks', jsonEncode(favorites.toJson()));
  }

  Future<void> _loadFavoriteBookListFromCache() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? favoritesCachedJson = prefs.getString('favoriteBooks');
    if (favoritesCachedJson != null) {
      FavoritesCached favorites =
          FavoritesCached.fromJson(jsonDecode(favoritesCachedJson));
      _favoriteBooks = List.of(favorites.books);
    } else {
      _favoriteBooks = [];
    }
    notifyListeners();
  }
}
