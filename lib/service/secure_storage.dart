import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:testproject/models/token_model.dart';
import 'package:testproject/models/user.dart';

class SecureStorage {
  final _secureStorage = const FlutterSecureStorage();

  AndroidOptions _getAndroidOptions() => const AndroidOptions();

  Future<void> saveTokens(TokenModel tokens) async {
    Map<String, dynamic> tempTokens = tokens.toJson();
    String tokenJson = jsonEncode(tempTokens);
    await _secureStorage.write(
      key: 'tokens',
      value: tokenJson,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<TokenModel?> readTokens() async {
    String? tempTokens = await _secureStorage.read(
      key: 'tokens',
      aOptions: _getAndroidOptions(),
    );

    if (tempTokens != null) {
      Map<String, dynamic> tokenMap = json.decode(tempTokens);
      TokenModel tokensModel = TokenModel.fromJson(tokenMap);
      return tokensModel;
    }
    return null;
  }

  Future<void> deleteTokens() async {
    await _secureStorage.delete(
      key: 'tokens',
      aOptions: _getAndroidOptions(),
    );
  }

  Future<void> saveUser(User currentUser) async {
    Map<String, dynamic> tempCurrentUser = currentUser.toJson();
    String currentUserJson = jsonEncode(tempCurrentUser);
    await _secureStorage.write(
      key: 'currentUser',
      value: currentUserJson,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<User?> readUser() async {
    String? tempCurrentUser = await _secureStorage.read(
      key: 'currentUser',
      aOptions: _getAndroidOptions(),
    );

    if (tempCurrentUser != null) {
      Map<String, dynamic> currentUserMap = json.decode(tempCurrentUser);
      User currentUserModel = User.fromJson(currentUserMap);
      return currentUserModel;
    }
    return null;
  }

  Future<void> deleteUser() async {
    await _secureStorage.delete(
      key: 'currentUser',
      aOptions: _getAndroidOptions(),
    );
  }
}
