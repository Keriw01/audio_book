// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      title: json['title'] as String,
      author: json['author'] as String,
      href: json['href'] as String,
      simpleThumb: json['simple_thumb'] as String,
      hasAudio: json['has_audio'] as bool,
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'href': instance.href,
      'simple_thumb': instance.simpleThumb,
      'has_audio': instance.hasAudio,
    };

_$_FavoriteBooksResponse _$$_FavoriteBooksResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FavoriteBooksResponse(
      favoriteBooks: (json['favoriteBooks'] as List<dynamic>)
          .map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FavoriteBooksResponseToJson(
        _$_FavoriteBooksResponse instance) =>
    <String, dynamic>{
      'favoriteBooks': instance.favoriteBooks,
    };
