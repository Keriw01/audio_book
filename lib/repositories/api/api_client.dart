import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:testproject/models/token_model.dart';
import 'package:testproject/models/user.dart';

part 'api_client.g.dart';

const String baseUrl = 'http://audiobookhsetvo.mooo.com///api/audio_book.php';

// w POST musi być pełny adres 'http://audiobookhsetvo.mooo.com///api/audio_book.php/login', zmiany przy build runner trzeba restartowac apke
@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST('$baseUrl/login')
  @FormUrlEncoded()
  Future<TokenModel> login({
    @Field("email") required String email,
    @Field("password") required String password,
  });

  @POST('$baseUrl/registration')
  @FormUrlEncoded()
  Future<TokenModel> registration({
    @Field("email") required String email,
    @Field("password") required String password,
  });

  @POST('$baseUrl/refresh-token')
  @FormUrlEncoded()
  Future<TokenModel> refreshToken({
    @Field("refresh_token") required String refreshToken,
  });

  @GET('$baseUrl/user')
  Future<User> getUserId({
    @Header("Authorization") required String accessToken,
  });
}
