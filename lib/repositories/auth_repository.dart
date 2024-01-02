import 'package:dio/dio.dart';
import 'package:testproject/exceptions/exception.dart';

import 'package:testproject/models/token_model.dart';
import 'package:testproject/models/user.dart';
import 'package:testproject/repositories/api/api_client.dart';
import 'package:testproject/service/locator.dart';

class AuthRepository {
  AuthRepository();

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

  Future<TokenModel> refreshToken(String refreshToken) async {
    try {
      TokenModel tokens = await getIt<ApiClient>()
          .refreshToken(refreshToken: 'Bearer $refreshToken');
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

  // Future<void> logOut(String accessToken) async {
  //   try {
  //     return await getIt<ApiClient>()
  //         .logout(accessToken: 'Bearer $accessToken');
  //   } on DioException catch (error) {
  //     if (error.message!.contains('SocketException')) {
  //       throw Future.error("No Connection");
  //     }
  //     switch (error.response?.statusCode) {
  //       case 401:
  //         throw Future.error("Invalid Credentail");
  //       default:
  //         throw Future.error("Invalid server error");
  //     }
  //   } catch (error) {
  //     throw Future.error(error.toString());
  //   }
  // }
}
