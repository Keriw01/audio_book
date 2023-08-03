import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testproject/models/book_fragment_data.dart';
import 'package:testproject/models/book_genres.dart';

part 'book_detail.freezed.dart';
part 'book_detail.g.dart';

@freezed
class BookDetail with _$BookDetail {
  const factory BookDetail({
    required List<BookGenres> genres,
    @JsonKey(name: 'fragment_data') required BookFragmentData? fragmentData,
    required String pdf,
    required String html,
  }) = _BookDetail;

  factory BookDetail.fromJson(Map<String, dynamic> json) =>
      _$BookDetailFromJson(json);
}
