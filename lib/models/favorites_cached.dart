import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testproject/models/book.dart';

part 'favorites_cached.freezed.dart';
part 'favorites_cached.g.dart';

@freezed
class FavoritesCached with _$FavoritesCached {
  const factory FavoritesCached({
    @JsonKey(name: 'favorite_books') required List<Book> books,
  }) = _FavoritesCached;
  factory FavoritesCached.fromJson(Map<String, dynamic> json) =>
      _$FavoritesCachedFromJson(json);
}
