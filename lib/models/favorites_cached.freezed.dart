// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_cached.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoritesCached _$FavoritesCachedFromJson(Map<String, dynamic> json) {
  return _FavoritesCached.fromJson(json);
}

/// @nodoc
mixin _$FavoritesCached {
  @JsonKey(name: 'favorite_books')
  List<Book> get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritesCachedCopyWith<FavoritesCached> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesCachedCopyWith<$Res> {
  factory $FavoritesCachedCopyWith(
          FavoritesCached value, $Res Function(FavoritesCached) then) =
      _$FavoritesCachedCopyWithImpl<$Res, FavoritesCached>;
  @useResult
  $Res call({@JsonKey(name: 'favorite_books') List<Book> books});
}

/// @nodoc
class _$FavoritesCachedCopyWithImpl<$Res, $Val extends FavoritesCached>
    implements $FavoritesCachedCopyWith<$Res> {
  _$FavoritesCachedCopyWithImpl(this._value, this._then);

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
abstract class _$$_FavoritesCachedCopyWith<$Res>
    implements $FavoritesCachedCopyWith<$Res> {
  factory _$$_FavoritesCachedCopyWith(
          _$_FavoritesCached value, $Res Function(_$_FavoritesCached) then) =
      __$$_FavoritesCachedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'favorite_books') List<Book> books});
}

/// @nodoc
class __$$_FavoritesCachedCopyWithImpl<$Res>
    extends _$FavoritesCachedCopyWithImpl<$Res, _$_FavoritesCached>
    implements _$$_FavoritesCachedCopyWith<$Res> {
  __$$_FavoritesCachedCopyWithImpl(
      _$_FavoritesCached _value, $Res Function(_$_FavoritesCached) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_$_FavoritesCached(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoritesCached implements _FavoritesCached {
  const _$_FavoritesCached(
      {@JsonKey(name: 'favorite_books') required final List<Book> books})
      : _books = books;

  factory _$_FavoritesCached.fromJson(Map<String, dynamic> json) =>
      _$$_FavoritesCachedFromJson(json);

  final List<Book> _books;
  @override
  @JsonKey(name: 'favorite_books')
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'FavoritesCached(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoritesCached &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoritesCachedCopyWith<_$_FavoritesCached> get copyWith =>
      __$$_FavoritesCachedCopyWithImpl<_$_FavoritesCached>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoritesCachedToJson(
      this,
    );
  }
}

abstract class _FavoritesCached implements FavoritesCached {
  const factory _FavoritesCached(
          {@JsonKey(name: 'favorite_books') required final List<Book> books}) =
      _$_FavoritesCached;

  factory _FavoritesCached.fromJson(Map<String, dynamic> json) =
      _$_FavoritesCached.fromJson;

  @override
  @JsonKey(name: 'favorite_books')
  List<Book> get books;
  @override
  @JsonKey(ignore: true)
  _$$_FavoritesCachedCopyWith<_$_FavoritesCached> get copyWith =>
      throw _privateConstructorUsedError;
}
