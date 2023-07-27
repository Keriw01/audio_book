import 'package:flutter/material.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/service/favorites_preferences.dart';

class FavoritesProvider with ChangeNotifier {
  List<Book> _favoriteBooks = [];
  List<Book> get favorite => _favoriteBooks;
  final FavoritesPreferences favoritesPreferences = FavoritesPreferences();

  FavoritesProvider() {
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    List<Book> loadedFavorites = await favoritesPreferences.load();
    _favoriteBooks.clear();
    _favoriteBooks.addAll(loadedFavorites);
    notifyListeners();
  }

  void addToFavorites(Book book) {
    _favoriteBooks.add(book);
    favoritesPreferences.save(_favoriteBooks);
    notifyListeners();
  }

  void removeFromFavorites(Book book) {
    _favoriteBooks.remove(book);
    favoritesPreferences.save(_favoriteBooks);
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
}
