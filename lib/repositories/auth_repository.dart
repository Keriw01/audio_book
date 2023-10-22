import 'package:dio/dio.dart';

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
      if (error.response?.statusCode == 401) {
        return Future.error("Invalid Credentail");
      } else {
        return Future.error("Invalid server error");
      }
    } catch (error) {
      throw Future.error(error.toString());
    }
  }

  // Future<TokenModel> register(String userName, String password) async {
  //   final ApiClient client = ApiClient(Api.instance.getDio());

  //   try {
  //     return await client.register(userName: userName, password: password);
  //   } on DioException catch (error) {
  //     if (error.response?.statusCode == 401) {
  //       return Future.error("Invalid Credentail");
  //     } else {
  //       return Future.error("Invalid server error");
  //     }
  //   } catch (error) {
  //     throw Future.error(error.toString());
  //   }
  // }
}
