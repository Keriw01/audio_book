// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_cached.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BooksCached _$BooksCachedFromJson(Map<String, dynamic> json) {
  return _BooksCached.fromJson(json);
}

/// @nodoc
mixin _$BooksCached {
  @JsonKey(name: 'books')
  List<Book> get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooksCachedCopyWith<BooksCached> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksCachedCopyWith<$Res> {
  factory $BooksCachedCopyWith(
          BooksCached value, $Res Function(BooksCached) then) =
      _$BooksCachedCopyWithImpl<$Res, BooksCached>;
  @useResult
  $Res call({@JsonKey(name: 'books') List<Book> books});
}

/// @nodoc
class _$BooksCachedCopyWithImpl<$Res, $Val extends BooksCached>
    implements $BooksCachedCopyWith<$Res> {
  _$BooksCachedCopyWithImpl(this._value, this._then);

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
abstract class _$$_BooksCachedCopyWith<$Res>
    implements $BooksCachedCopyWith<$Res> {
  factory _$$_BooksCachedCopyWith(
          _$_BooksCached value, $Res Function(_$_BooksCached) then) =
      __$$_BooksCachedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'books') List<Book> books});
}

/// @nodoc
class __$$_BooksCachedCopyWithImpl<$Res>
    extends _$BooksCachedCopyWithImpl<$Res, _$_BooksCached>
    implements _$$_BooksCachedCopyWith<$Res> {
  __$$_BooksCachedCopyWithImpl(
      _$_BooksCached _value, $Res Function(_$_BooksCached) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_$_BooksCached(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BooksCached implements _BooksCached {
  const _$_BooksCached(
      {@JsonKey(name: 'books') required final List<Book> books})
      : _books = books;

  factory _$_BooksCached.fromJson(Map<String, dynamic> json) =>
      _$$_BooksCachedFromJson(json);

  final List<Book> _books;
  @override
  @JsonKey(name: 'books')
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'BooksCached(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BooksCached &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BooksCachedCopyWith<_$_BooksCached> get copyWith =>
      __$$_BooksCachedCopyWithImpl<_$_BooksCached>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BooksCachedToJson(
      this,
    );
  }
}

abstract class _BooksCached implements BooksCached {
  const factory _BooksCached(
          {@JsonKey(name: 'books') required final List<Book> books}) =
      _$_BooksCached;

  factory _BooksCached.fromJson(Map<String, dynamic> json) =
      _$_BooksCached.fromJson;

  @override
  @JsonKey(name: 'books')
  List<Book> get books;
  @override
  @JsonKey(ignore: true)
  _$$_BooksCachedCopyWith<_$_BooksCached> get copyWith =>
      throw _privateConstructorUsedError;
}
