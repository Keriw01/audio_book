import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_fragment_data.freezed.dart';
part 'book_fragment_data.g.dart';

/// Class for a passage from a book in html link format
@freezed
class BookFragmentData with _$BookFragmentData {
  const factory BookFragmentData({
    required String html,
  }) = _BookFragmentData;

  factory BookFragmentData.fromJson(Map<String, dynamic> json) =>
      _$BookFragmentDataFromJson(json);
}
