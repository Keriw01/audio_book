import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_genres.freezed.dart';
part 'book_genres.g.dart';

@freezed
class BookGenres with _$BookGenres {
  const factory BookGenres({
    required String name,
  }) = _BookGenres;

  factory BookGenres.fromJson(Map<String, dynamic> json) =>
      _$BookGenresFromJson(json);
}
