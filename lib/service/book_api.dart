import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:testproject/models/book_response.dart';
part 'book_api.g.dart';

@RestApi()
abstract class BooksApi {
  factory BooksApi(Dio dio) = _BooksApi;
  @GET('{url}')
  Future<BookResponse> getBooks(@Path() String url);
}
