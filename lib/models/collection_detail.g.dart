// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CollectionDetail _$$_CollectionDetailFromJson(Map<String, dynamic> json) =>
    _$_CollectionDetail(
      books: (json['books'] as List<dynamic>)
          .map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CollectionDetailToJson(_$_CollectionDetail instance) =>
    <String, dynamic>{
      'books': instance.books,
    };
