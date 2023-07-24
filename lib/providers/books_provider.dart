import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/models/book.dart';
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
    List<String> jsonList =
        bookList.map((book) => jsonEncode(book.toJson())).toList();
    await prefs.setStringList(href, jsonList);
  }

  Future<List<Book>> _loadBookListFromCache(String href) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? jsonStringList = prefs.getStringList(href);
    if (jsonStringList != null) {
      List<Book> bookList = jsonStringList.map((jsonString) {
        Map<String, dynamic> json =
            jsonDecode(jsonString) as Map<String, dynamic>;
        return Book.fromJson(json);
      }).toList();
      return bookList;
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
