import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:testproject/models/collection.dart';
import 'package:testproject/service/collections_api.dart';

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
      final dio = Dio();
      final api = CollectionsApi(dio);

      _collections = await api.getCollections();
    } catch (error) {
      if (error is DioException) {
        _errorMessage = 'Błąd sieci: ${error.message}';
      } else {
        _errorMessage = 'Inny błąd: $error';
      }
    }

    _isLoading = false;
    notifyListeners();
  }
}
