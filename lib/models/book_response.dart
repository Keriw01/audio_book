import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testproject/models/book.dart';

part 'book_response.freezed.dart';
part 'book_response.g.dart';

@freezed
class BookResponse with _$BookResponse {
  const factory BookResponse({
    required List<Book> books,
  }) = _BookResponse;
  factory BookResponse.fromJson(Map<String, dynamic> json) =>
      _$BookResponseFromJson(json);
}
