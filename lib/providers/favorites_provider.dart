import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/models/book.dart';

class FavoritesProvider with ChangeNotifier {
  List<Book> _favoriteBooks = [];
  List<Book> get favorite => _favoriteBooks;

  FavoritesProvider() {
    _loadFavoriteBookListFromCache();
  }

  void addToFavorites(Book book) {
    _favoriteBooks.add(book);
    _saveFavoriteBooksToCache();
    notifyListeners();
  }

  void removeFromFavorites(Book book) {
    _favoriteBooks.remove(book);
    _saveFavoriteBooksToCache();
    notifyListeners();
  }

  bool isFavoriteBookInBooks(List<Book> books) {
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

  Future<void> _saveFavoriteBooksToCache() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favoriteBookList =
        _favoriteBooks.map((book) => jsonEncode(book.toJson())).toList();
    await prefs.setStringList('favoriteBooks', favoriteBookList);
  }

  Future<void> _loadFavoriteBookListFromCache() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? favoriteBookList = prefs.getStringList('favoriteBooks');
    _favoriteBooks.clear();
    if (favoriteBookList != null) {
      _favoriteBooks = favoriteBookList.map((jsonString) {
        Map<String, dynamic> json =
            jsonDecode(jsonString) as Map<String, dynamic>;
        return Book.fromJson(json);
      }).toList();
    }
    notifyListeners();
  }
}
