import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_media.freezed.dart';
part 'book_media.g.dart';

@freezed
class BookMedia with _$BookMedia {
  const factory BookMedia({
    required String url,
    required String? director,
    required String type,
    required String artist,
  }) = _BookMedia;

  factory BookMedia.fromJson(Map<String, dynamic> json) =>
      _$BookMediaFromJson(json);
}
