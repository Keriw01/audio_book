import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  const factory Collection({
    required String href,
    required String title,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}
