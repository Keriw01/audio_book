import 'package:flutter/material.dart';
import 'package:testproject/models/collection.dart';
import 'package:testproject/service/collections_api.dart';
import 'package:testproject/service/locator.dart';

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
      _collections = await getIt<CollectionsApi>().getCollections();
    } catch (error) {
      _errorMessage = 'Błąd: $error';
    }

    _isLoading = false;
    notifyListeners();
  }
}
