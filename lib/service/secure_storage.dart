import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:testproject/models/token_model.dart';
import 'package:testproject/models/user.dart';

/// SecureStorage class handles the secure storage of sensitive information such as tokens and user data.
class SecureStorage {
  final _secureStorage = const FlutterSecureStorage();

  AndroidOptions _getAndroidOptions() => const AndroidOptions();

  /// Saves the provided tokens securely in the storage.
  Future<void> saveTokens(TokenModel tokens) async {
    Map<String, dynamic> tempTokens = tokens.toJson();
    String tokenJson = jsonEncode(tempTokens);
    await _secureStorage.write(
      key: 'tokens',
      value: tokenJson,
      aOptions: _getAndroidOptions(),
    );
  }

  /// Reads and returns the stored tokens from secure storage.
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

  /// Deletes the stored tokens from secure storage.
  Future<void> deleteTokens() async {
    await _secureStorage.delete(
      key: 'tokens',
      aOptions: _getAndroidOptions(),
    );
  }

  /// Saves the provided user data securely in the storage.
  Future<void> saveUser(User currentUser) async {
    Map<String, dynamic> tempCurrentUser = currentUser.toJson();
    String currentUserJson = jsonEncode(tempCurrentUser);
    await _secureStorage.write(
      key: 'currentUser',
      value: currentUserJson,
      aOptions: _getAndroidOptions(),
    );
  }

  /// Reads and returns the stored user data from secure storage.
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

  /// Deletes the stored user data from secure storage.
  Future<void> deleteUser() async {
    await _secureStorage.delete(
      key: 'currentUser',
      aOptions: _getAndroidOptions(),
    );
  }

  /// Saves the provided rememberMe flag securely in the storage.
  Future<void> saveRememberFlag(bool? rememberMe) async {
    String rememberFlagJson = jsonEncode(rememberMe);
    await _secureStorage.write(
      key: 'rememberMeFlag',
      value: rememberFlagJson,
      aOptions: _getAndroidOptions(),
    );
  }

  /// Reads and returns the stored rememberMe flag from secure storage.
  Future<bool> readRememberFlag() async {
    String? tempRememberFlag = await _secureStorage.read(
      key: 'rememberMeFlag',
      aOptions: _getAndroidOptions(),
    );

    if (tempRememberFlag != null) {
      return json.decode(tempRememberFlag);
    }
    return false;
  }

  /// Deletes the stored rememberMe flag from secure storage.
  Future<void> deleteRememberFlag() async {
    await _secureStorage.delete(
      key: 'rememberMeFlag',
      aOptions: _getAndroidOptions(),
    );
  }
}
