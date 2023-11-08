import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:testproject/models/token_model.dart';

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
}