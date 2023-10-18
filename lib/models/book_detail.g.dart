// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookDetail _$$_BookDetailFromJson(Map<String, dynamic> json) =>
    _$_BookDetail(
      genres: (json['genres'] as List<dynamic>)
          .map((e) => BookMetadata.fromJson(e as Map<String, dynamic>))
          .toList(),
      authors: (json['authors'] as List<dynamic>)
          .map((e) => BookMetadata.fromJson(e as Map<String, dynamic>))
          .toList(),
      fragmentData: json['fragment_data'] == null
          ? null
          : BookFragmentData.fromJson(
              json['fragment_data'] as Map<String, dynamic>),
      pdf: json['pdf'] as String,
      html: json['html'] as String,
      media: (json['media'] as List<dynamic>)
          .map((e) => BookMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookDetailToJson(_$_BookDetail instance) =>
    <String, dynamic>{
      'genres': instance.genres,
      'authors': instance.authors,
      'fragment_data': instance.fragmentData,
      'pdf': instance.pdf,
      'html': instance.html,
      'media': instance.media,
    };
