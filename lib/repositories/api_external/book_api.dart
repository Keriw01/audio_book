import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:testproject/models/book_detail.dart';
import 'package:testproject/models/collection_detail.dart';
part 'book_api.g.dart';

/// Retrofit REST API client for interacting with book-related endpoints
@RestApi()
abstract class BooksApi {
  factory BooksApi(Dio dio) = _BooksApi;

  /// Endpoint to fetch a collection's details (books from collections) based on the provided URL
  @GET('{url}')
  Future<CollectionDetail> getBooks(@Path() String url);

  /// Endpoint to fetch details of a specific book based on the provided URL
  @GET('{url}')
  Future<BookDetail> getBookDetail(@Path() String url);
}
