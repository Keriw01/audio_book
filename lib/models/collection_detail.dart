import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testproject/models/book.dart';

part 'collection_detail.freezed.dart';
part 'collection_detail.g.dart';

@freezed
class CollectionDetail with _$CollectionDetail {
  const factory CollectionDetail({
    required List<Book> books,
  }) = _CollectionDetail;
  factory CollectionDetail.fromJson(Map<String, dynamic> json) =>
      _$CollectionDetailFromJson(json);
}
