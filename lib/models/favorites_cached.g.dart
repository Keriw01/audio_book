// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_cached.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoritesCached _$$_FavoritesCachedFromJson(Map<String, dynamic> json) =>
    _$_FavoritesCached(
      books: (json['favorite_books'] as List<dynamic>)
          .map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FavoritesCachedToJson(_$_FavoritesCached instance) =>
    <String, dynamic>{
      'favorite_books': instance.books,
    };
