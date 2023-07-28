import 'package:flutter/material.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/models/collection_detail.dart';
import 'package:testproject/service/book_api.dart';
import 'package:testproject/service/books_preferences.dart';
import 'package:testproject/service/locator.dart';

class BooksProvider with ChangeNotifier {
  List<Book> _books = [];
  List<Book> get books => _books;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String _errorMessage = '';
  String get errorMessage => _errorMessage;

  BooksProvider(String href) {
    _fetchBookCollections(href);
  }

  Future<void> refreshBookCollection(String href) async {
    _books = [];
    _isLoading = false;
    _errorMessage = '';

    await _fetchBookCollections(href);
  }

  Future<void> _fetchBookCollections(String href) async {
    final bookPreferences = getIt<BooksPreferences>();
    _isLoading = true;
    try {
      _books = await bookPreferences.load(href);
      if (_books.isEmpty) {
        final CollectionDetail response =
            await getIt<BooksApi>().getBooks(href);
        _books = response.books;
        bookPreferences.save(_books, href);
      }
    } catch (error) {
      _errorMessage = 'Błąd: $error';
    }
    _isLoading = false;
    notifyListeners();
  }
}
