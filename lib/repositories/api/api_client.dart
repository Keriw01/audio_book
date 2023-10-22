import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:testproject/models/token_model.dart';

part 'api_client.g.dart';

// w POST musi być pełny adres 'http://audiobookhsetvo.mooo.com///api/audio_book.php/login', zmiany przy build runner trzeba restartowac apke
@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST('http://audiobookhsetvo.mooo.com///api/audio_book.php/login')
  Future<TokenModel> login({
    @Field("email") required String email,
    @Field("password") required String password,
  });

  @POST('http://audiobookhsetvo.mooo.com///api/audio_book.php/registration')
  Future<TokenModel> registration({
    @Field("email") required String email,
    @Field("password") required String password,
  });

  @POST('http://audiobookhsetvo.mooo.com///api/audio_book.php/refresh-token')
  Future<TokenModel> refreshToken({
    @Field("refresh_token") required String refreshToken,
  });
}
