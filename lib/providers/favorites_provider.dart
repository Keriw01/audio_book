import 'package:flutter/material.dart';
import 'package:testproject/models/book.dart';

class FavoritesProvider with ChangeNotifier {
  final List<Book> _favoriteBooks = [];
  List<Book> get favorite => _favoriteBooks;

  void addToFavorites(Book book) {
    _favoriteBooks.add(book);
    notifyListeners();
  }

  void removeFromFavorites(Book book) {
    _favoriteBooks.remove(book);
    notifyListeners();
  }

  bool isFavoriteBookInBooks(List<Book> books) {
    return _favoriteBooks.any((searchBook) =>
        books.any((mainBook) => mainBook.title == searchBook.title));
  }

  List<Book> booksWithoutFavorite(List<Book> books) {
    List<Book> booksWithoutFavorite =
        books.where((book) => !_favoriteBooks.contains(book)).toList();
    return booksWithoutFavorite;
  }

  List<Book> booksFavoriteForCollection(List<Book> books) {
    List<Book> booksFavoriteForCollection =
        books.where((book) => _favoriteBooks.contains(book)).toList();
    return booksFavoriteForCollection;
  }
}
