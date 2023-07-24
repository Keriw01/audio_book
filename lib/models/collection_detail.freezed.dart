// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CollectionDetail _$CollectionDetailFromJson(Map<String, dynamic> json) {
  return _CollectionDetail.fromJson(json);
}

/// @nodoc
mixin _$CollectionDetail {
  List<Book> get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionDetailCopyWith<CollectionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionDetailCopyWith<$Res> {
  factory $CollectionDetailCopyWith(
          CollectionDetail value, $Res Function(CollectionDetail) then) =
      _$CollectionDetailCopyWithImpl<$Res, CollectionDetail>;
  @useResult
  $Res call({List<Book> books});
}

/// @nodoc
class _$CollectionDetailCopyWithImpl<$Res, $Val extends CollectionDetail>
    implements $CollectionDetailCopyWith<$Res> {
  _$CollectionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_value.copyWith(
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollectionDetailCopyWith<$Res>
    implements $CollectionDetailCopyWith<$Res> {
  factory _$$_CollectionDetailCopyWith(
          _$_CollectionDetail value, $Res Function(_$_CollectionDetail) then) =
      __$$_CollectionDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Book> books});
}

/// @nodoc
class __$$_CollectionDetailCopyWithImpl<$Res>
    extends _$CollectionDetailCopyWithImpl<$Res, _$_CollectionDetail>
    implements _$$_CollectionDetailCopyWith<$Res> {
  __$$_CollectionDetailCopyWithImpl(
      _$_CollectionDetail _value, $Res Function(_$_CollectionDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_$_CollectionDetail(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CollectionDetail implements _CollectionDetail {
  const _$_CollectionDetail({required final List<Book> books}) : _books = books;

  factory _$_CollectionDetail.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionDetailFromJson(json);

  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'CollectionDetail(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectionDetail &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollectionDetailCopyWith<_$_CollectionDetail> get copyWith =>
      __$$_CollectionDetailCopyWithImpl<_$_CollectionDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectionDetailToJson(
      this,
    );
  }
}

abstract class _CollectionDetail implements CollectionDetail {
  const factory _CollectionDetail({required final List<Book> books}) =
      _$_CollectionDetail;

  factory _CollectionDetail.fromJson(Map<String, dynamic> json) =
      _$_CollectionDetail.fromJson;

  @override
  List<Book> get books;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionDetailCopyWith<_$_CollectionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
