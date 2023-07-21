import 'dart:convert' as convert;
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/models/book/book_model.dart';

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
        final url =
            Uri.https('wolnelektury.pl', href.split('wolnelektury.pl')[1]);
        final response = await http.get(url);

        if (response.statusCode == 200) {
          final jsonData = convert.jsonDecode(utf8.decode(response.bodyBytes));
          if (jsonData['books'] is List) {
            final bookDataList = jsonData['books'] as List<dynamic>;
            _books = bookDataList.map((item) => Book.fromJson(item)).toList();
            _saveBookListToCache(_books, href);
          } else {
            _errorMessage = 'Nieprawidłowy format danych: oczekiwano listy.';
          }
        } else {
          _errorMessage =
              'Żądanie nie powiodło się ze stanem: ${response.statusCode}';
        }
      } catch (error) {
        if (error is SocketException) {
          _errorMessage = 'Błąd sieci: $error';
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
