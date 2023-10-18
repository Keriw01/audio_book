import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required String title,
    required String author,
    required String href,
    @JsonKey(name: 'simple_thumb') required String simpleThumb,
    @JsonKey(name: 'has_audio') required bool hasAudio,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
