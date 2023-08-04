import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:testproject/models/book_detail.dart';
import 'package:testproject/models/collection_detail.dart';
part 'book_api.g.dart';

@RestApi()
abstract class BooksApi {
  factory BooksApi(Dio dio) = _BooksApi;
  @GET('{url}')
  Future<CollectionDetail> getBooks(@Path() String url);
  @GET('{url}')
  Future<BookDetail> getBookDetail(@Path() String url);
}
