import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_metadata.freezed.dart';
part 'book_metadata.g.dart';

/// Helper class to retrieve list of authors, genres
@freezed
class BookMetadata with _$BookMetadata {
  const factory BookMetadata({
    required String name,
  }) = _BookMetadata;

  factory BookMetadata.fromJson(Map<String, dynamic> json) =>
      _$BookMetadataFromJson(json);
}
