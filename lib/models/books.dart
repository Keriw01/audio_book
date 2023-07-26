import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testproject/models/book.dart';

part 'books.freezed.dart';
part 'books.g.dart';

@freezed
class Books with _$Books {
  const factory Books({
    @JsonKey(name: 'books') required List<Book> books,
  }) = _Books;
  factory Books.fromJson(Map<String, dynamic> json) => _$BooksFromJson(json);
}
