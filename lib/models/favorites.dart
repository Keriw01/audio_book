import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testproject/models/book.dart';

part 'favorites.freezed.dart';
part 'favorites.g.dart';

@freezed
class Favorites with _$Favorites {
  const factory Favorites({
    @JsonKey(name: 'favorite_books') required List<Book> books,
  }) = _Favorites;
  factory Favorites.fromJson(Map<String, dynamic> json) =>
      _$FavoritesFromJson(json);
}
