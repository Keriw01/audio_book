// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookDetail _$$_BookDetailFromJson(Map<String, dynamic> json) =>
    _$_BookDetail(
      genres: (json['genres'] as List<dynamic>)
          .map((e) => BookGenres.fromJson(e as Map<String, dynamic>))
          .toList(),
      fragmentData: BookFragmentData.fromJson(
          json['fragment_data'] as Map<String, dynamic>),
      pdf: json['pdf'] as String,
    );

Map<String, dynamic> _$$_BookDetailToJson(_$_BookDetail instance) =>
    <String, dynamic>{
      'genres': instance.genres,
      'fragment_data': instance.fragmentData,
      'pdf': instance.pdf,
    };
