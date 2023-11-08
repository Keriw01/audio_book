import 'package:dio/dio.dart';
import 'package:testproject/exceptions/exception.dart';

import 'package:testproject/models/token_model.dart';
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
      switch (error.response?.statusCode) {
        case 401:
          throw InternalCredentialsError();
        default:
          throw InternalServerError();
      }
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
      switch (error.response?.statusCode) {
        case 401:
          throw UserAlreadyExistsError();
        default:
          throw InternalServerError();
      }
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
      switch (error.response?.statusCode) {
        case 403:
          throw RefreshTokenExpiredException();
        case 405:
          throw InternalRefreshTokenError();
        default:
          throw InternalServerError();
      }
    } catch (error) {
      print(error);
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
