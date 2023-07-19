import 'dart:convert' as convert;
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import '../models/collection.dart';
import 'package:http/http.dart' as http;

class CollectionsProvider with ChangeNotifier {
  List<Collection> _collections = [];
  List<Collection> get collections => _collections;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String _errorMessage = '';
  String get errorMessage => _errorMessage;

  CollectionsProvider() {
    _fetchCollections();
  }

  Future<void> refreshCollection() async {
    _collections = [];
    _isLoading = false;
    _errorMessage = '';

    await _fetchCollections();
  }

  Future<void> _fetchCollections() async {
    _isLoading = true;

    try {
      final url = Uri.https('wolnelektury.pl', '/api/collections/');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        _collections = (convert.jsonDecode(utf8.decode(response.bodyBytes))
                as List<dynamic>)
            .map((e) => Collection.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        _errorMessage = 'Request failed with status: ${response.statusCode}';
      }
    } catch (error) {
      if (error is SocketException) {
        _errorMessage = 'Network error: $error';
      } else {
        _errorMessage = 'Other error: $error';
      }
    }

    _isLoading = false;
    notifyListeners();
  }
}
