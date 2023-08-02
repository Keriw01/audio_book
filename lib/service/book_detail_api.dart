import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:testproject/models/book_detail.dart';
part 'book_detail_api.g.dart';

@RestApi()
abstract class BookDetailApi {
  factory BookDetailApi(Dio dio) = _BookDetailApi;
  @GET('{url}')
  Future<BookDetail> getBookDetail(@Path() String url);
}
