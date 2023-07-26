// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Favorites _$$_FavoritesFromJson(Map<String, dynamic> json) => _$_Favorites(
      books: (json['favorite_books'] as List<dynamic>)
          .map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FavoritesToJson(_$_Favorites instance) =>
    <String, dynamic>{
      'favorite_books': instance.books,
    };
