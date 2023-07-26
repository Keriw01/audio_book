import 'package:flutter/material.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/models/collection_detail.dart';
import 'package:testproject/service/book_api.dart';
import 'package:dio/dio.dart';
import 'package:testproject/service/books_preferences.dart';

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
    final BooksPreferences bookPreferences = BooksPreferences();
    _isLoading = true;
    bool isDataCached = await bookPreferences.isCached(href);
    if (isDataCached != true) {
      try {
        final dio = Dio();
        final api = BooksApi(dio);
        final CollectionDetail response = await api.getBooks(href);
        _books = response.books;
        bookPreferences.save(_books, href);
      } catch (error) {
        if (error is DioException) {
          _errorMessage = 'Błąd sieci: ${error.message}';
        } else {
          _errorMessage = 'Inny błąd: $error';
        }
      }
    } else {
      _books = await bookPreferences.load(href);
    }
    _isLoading = false;
    notifyListeners();
  }
}
