import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/models/books_cached.dart';
import 'package:testproject/models/collection_detail.dart';
import 'package:testproject/service/book_api.dart';
import 'package:dio/dio.dart';

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

  Future<bool> _isDataCached(String href) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isDataCached$href') ?? false;
  }

  Future<void> _saveBookListToCache(List<Book> bookList, String href) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDataCached$href', true);
    BooksCached books = BooksCached(books: bookList);
    await prefs.setString(href, jsonEncode(books.toJson()));
  }

  Future<List<Book>> _loadBookListFromCache(String href) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? booksCachedJson = prefs.getString(href);
    if (booksCachedJson != null) {
      BooksCached booksCached =
          BooksCached.fromJson(jsonDecode(booksCachedJson));
      return booksCached.books;
    } else {
      return [];
    }
  }

  Future<void> _fetchBookCollections(String href) async {
    _isLoading = true;
    bool isDataCached = await _isDataCached(href);
    if (isDataCached != true) {
      try {
        final dio = Dio();
        final api = BooksApi(dio);
        final CollectionDetail response = await api.getBooks(href);
        _books = response.books;
        _saveBookListToCache(_books, href);
      } catch (error) {
        if (error is DioException) {
          _errorMessage = 'Błąd sieci: ${error.message}';
        } else {
          _errorMessage = 'Inny błąd: $error';
        }
      }
    } else {
      _books = await _loadBookListFromCache(href);
    }
    _isLoading = false;
    notifyListeners();
  }
}
