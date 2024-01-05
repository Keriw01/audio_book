import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_media.freezed.dart';
part 'book_media.g.dart';

/// Media class, including a link to the mp4 format of a given book
@freezed
class BookMedia with _$BookMedia {
  const factory BookMedia({
    required String url,
    required String? director,
    required String type,
    required String name,
    required String artist,
  }) = _BookMedia;

  factory BookMedia.fromJson(Map<String, dynamic> json) =>
      _$BookMediaFromJson(json);
}
