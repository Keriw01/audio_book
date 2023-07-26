// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_cached.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BooksCached _$$_BooksCachedFromJson(Map<String, dynamic> json) =>
    _$_BooksCached(
      books: (json['books'] as List<dynamic>)
          .map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BooksCachedToJson(_$_BooksCached instance) =>
    <String, dynamic>{
      'books': instance.books,
    };
