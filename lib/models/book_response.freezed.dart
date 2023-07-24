// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookResponse _$BookResponseFromJson(Map<String, dynamic> json) {
  return _BookResponse.fromJson(json);
}

/// @nodoc
mixin _$BookResponse {
  List<Book> get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookResponseCopyWith<BookResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookResponseCopyWith<$Res> {
  factory $BookResponseCopyWith(
          BookResponse value, $Res Function(BookResponse) then) =
      _$BookResponseCopyWithImpl<$Res, BookResponse>;
  @useResult
  $Res call({List<Book> books});
}

/// @nodoc
class _$BookResponseCopyWithImpl<$Res, $Val extends BookResponse>
    implements $BookResponseCopyWith<$Res> {
  _$BookResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_BookResponseCopyWith<$Res>
    implements $BookResponseCopyWith<$Res> {
  factory _$$_BookResponseCopyWith(
          _$_BookResponse value, $Res Function(_$_BookResponse) then) =
      __$$_BookResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Book> books});
}

/// @nodoc
class __$$_BookResponseCopyWithImpl<$Res>
    extends _$BookResponseCopyWithImpl<$Res, _$_BookResponse>
    implements _$$_BookResponseCopyWith<$Res> {
  __$$_BookResponseCopyWithImpl(
      _$_BookResponse _value, $Res Function(_$_BookResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_$_BookResponse(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookResponse implements _BookResponse {
  const _$_BookResponse({required final List<Book> books}) : _books = books;

  factory _$_BookResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BookResponseFromJson(json);

  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'BookResponse(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookResponse &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookResponseCopyWith<_$_BookResponse> get copyWith =>
      __$$_BookResponseCopyWithImpl<_$_BookResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookResponseToJson(
      this,
    );
  }
}

abstract class _BookResponse implements BookResponse {
  const factory _BookResponse({required final List<Book> books}) =
      _$_BookResponse;

  factory _BookResponse.fromJson(Map<String, dynamic> json) =
      _$_BookResponse.fromJson;

  @override
  List<Book> get books;
  @override
  @JsonKey(ignore: true)
  _$$_BookResponseCopyWith<_$_BookResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
