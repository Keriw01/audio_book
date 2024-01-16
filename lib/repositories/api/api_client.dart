import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/models/token_model.dart';
import 'package:testproject/models/user.dart';

part 'api_client.g.dart';

/// Define the base URL for the API
const String baseUrl = 'http://audiobookhsetvo.mooo.com///api/audio_book.php';

// w POST musi być pełny adres 'http://audiobookhsetvo.mooo.com///api/audio_book.php/login', zmiany przy build runner trzeba restartowac apke
/// Retrofit API client for making network requests
@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  /// Endpoint for user login
  @POST('$baseUrl/login')
  @FormUrlEncoded()
  Future<TokenModel> login({
    @Field("email") required String email,
    @Field("password") required String password,
  });

  // Endpoint for user registration
  @POST('$baseUrl/registration')
  @FormUrlEncoded()
  Future<TokenModel> registration({
    @Field("email") required String email,
    @Field("password") required String password,
  });

  /// Endpoint for refreshing the access token
  @POST('$baseUrl/refresh-token')
  @FormUrlEncoded()
  Future<TokenModel> refreshToken({
    @Field("refresh_token") required String refreshToken,
    @Field("user_id") required String? userId,
  });

  /// Endpoint for getting user details
  @GET('$baseUrl/user')
  Future<User> getUserId({
    @Header("Authorization") required String accessToken,
  });

  /// Endpoint for getting the list of favorite books
  @POST('$baseUrl/favorite-books')
  @FormUrlEncoded()
  Future<FavoriteBooksResponse> getFavoriteBooks({
    @Field("user_id") required String userId,
  });

  /// Endpoint for saving a book as a favorite
  @POST('$baseUrl/favorite-book-save')
  @FormUrlEncoded()
  Future<void> saveFavoriteBook({
    @Field("book") required String book,
    @Field("user_id") required String userId,
  });

  /// Endpoint for deleting a book from favorites
  @POST('$baseUrl/favorite-book-delete')
  @FormUrlEncoded()
  Future<void> deleteFavoriteBook({
    @Field("title") required String bookTitle,
    @Field("user_id") required String userId,
  });
}
