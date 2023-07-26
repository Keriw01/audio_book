import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testproject/models/book.dart';

part 'books_cached.freezed.dart';
part 'books_cached.g.dart';

@freezed
class BooksCached with _$BooksCached {
  const factory BooksCached({
    @JsonKey(name: 'books') required List<Book> books,
  }) = _BooksCached;
  factory BooksCached.fromJson(Map<String, dynamic> json) =>
      _$BooksCachedFromJson(json);
}
