import 'package:dio/dio.dart';
import 'package:testproject/exceptions/exception.dart';

import 'package:testproject/models/token_model.dart';
import 'package:testproject/models/user.dart';
import 'package:testproject/repositories/api/api_client.dart';
import 'package:testproject/service/locator.dart';

/// Repository responsible for handling authentication-related API requests.
class AuthRepository {
  AuthRepository();

  /// Performs a user login by sending an email and password to the API.
  ///
  /// - Throws [NoConnectionException] if there is no internet connection.
  /// - Throws [InternalCredentialsError] if the provided credentials are invalid.
  /// - Throws [InternalServerError] for other server errors.
  /// - Throws [DefaultException] for any other unexpected errors.
  Future<TokenModel> login(String email, String password) async {
    try {
      TokenModel tokens =
          await getIt<ApiClient>().login(email: email, password: password);
      return tokens;
    } on DioException catch (error) {
      if (error.message!.contains('SocketException')) {
        throw NoConnectionException();
      }
      if (error.response?.statusCode == 401) {
        throw InternalCredentialsError();
      }

      throw InternalServerError();
    } catch (error) {
      print(error);
      throw DefaultException();
    }
  }

  /// Registers a new user by sending an email and password to the API.
  ///
  /// - Throws [NoConnectionException] if there is no internet connection.
  /// - Throws [UserAlreadyExistsError] if the user already exists.
  /// - Throws [InternalServerError] for other server errors.
  /// - Throws [DefaultException] for any other unexpected errors.
  Future<TokenModel> register(String email, String password) async {
    try {
      TokenModel tokens = await getIt<ApiClient>()
          .registration(email: email, password: password);

      return tokens;
    } on DioException catch (error) {
      if (error.message!.contains('SocketException')) {
        throw NoConnectionException();
      }
      if (error.response?.statusCode == 401) {
        throw UserAlreadyExistsError();
      }
      if (error.response?.statusCode == 500) {
        throw InternalServerError();
      }

      throw DefaultException();
    } catch (error) {
      print(error);
      throw DefaultException();
    }
  }

  /// Refreshes the access token using a refresh token.
  ///
  /// - Throws [NoConnectionException] if there is no internet connection.
  /// - Throws [RefreshTokenExpiredException] if the refresh token has expired.
  /// - Throws [InternalServerError] for other server errors.
  /// - Throws [InvalidSessionId] if the session id has changed.
  /// - Throws [DefaultException] for any other unexpected errors.
  Future<TokenModel> refreshToken(
    String refreshToken,
    String? userId,
  ) async {
    try {
      TokenModel tokens = await getIt<ApiClient>().refreshToken(
        refreshToken: 'Bearer $refreshToken',
        userId: userId,
      );
      return tokens;
    } on DioException catch (error) {
      if (error.message!.contains('SocketException')) {
        throw NoConnectionException();
      }
      if (error.response?.statusCode == 403) {
        throw RefreshTokenExpiredException();
      }
      if (error.response?.statusCode == 405) {
        throw InternalServerError();
      }

      throw DefaultException();
    } catch (error) {
      print(error);
      throw DefaultException();
    }
  }

  /// Retrieves user details based on the provided access token.
  ///
  /// - Throws [NoConnectionException] if there is no internet connection.
  /// - Throws [InternalCredentialsError] if the credentials are invalid.
  /// - Throws [DefaultException] for any other unexpected errors.
  Future<User> getUserId(String accessToken) async {
    try {
      User currentUser =
          await getIt<ApiClient>().getUserId(accessToken: accessToken);
      return currentUser;
    } on DioException catch (error) {
      if (error.message!.contains('SocketException')) {
        throw NoConnectionException();
      }
      throw InternalCredentialsError;
    } catch (error) {
      print(error.toString());
      throw DefaultException();
    }
  }
}
