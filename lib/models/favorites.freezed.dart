// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Favorites _$FavoritesFromJson(Map<String, dynamic> json) {
  return _Favorites.fromJson(json);
}

/// @nodoc
mixin _$Favorites {
  @JsonKey(name: 'favorite_books')
  List<Book> get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritesCopyWith<Favorites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesCopyWith<$Res> {
  factory $FavoritesCopyWith(Favorites value, $Res Function(Favorites) then) =
      _$FavoritesCopyWithImpl<$Res, Favorites>;
  @useResult
  $Res call({@JsonKey(name: 'favorite_books') List<Book> books});
}

/// @nodoc
class _$FavoritesCopyWithImpl<$Res, $Val extends Favorites>
    implements $FavoritesCopyWith<$Res> {
  _$FavoritesCopyWithImpl(this._value, this._then);

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
abstract class _$$_FavoritesCopyWith<$Res> implements $FavoritesCopyWith<$Res> {
  factory _$$_FavoritesCopyWith(
          _$_Favorites value, $Res Function(_$_Favorites) then) =
      __$$_FavoritesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'favorite_books') List<Book> books});
}

/// @nodoc
class __$$_FavoritesCopyWithImpl<$Res>
    extends _$FavoritesCopyWithImpl<$Res, _$_Favorites>
    implements _$$_FavoritesCopyWith<$Res> {
  __$$_FavoritesCopyWithImpl(
      _$_Favorites _value, $Res Function(_$_Favorites) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_$_Favorites(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Favorites implements _Favorites {
  const _$_Favorites(
      {@JsonKey(name: 'favorite_books') required final List<Book> books})
      : _books = books;

  factory _$_Favorites.fromJson(Map<String, dynamic> json) =>
      _$$_FavoritesFromJson(json);

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
    return 'Favorites(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Favorites &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoritesCopyWith<_$_Favorites> get copyWith =>
      __$$_FavoritesCopyWithImpl<_$_Favorites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoritesToJson(
      this,
    );
  }
}

abstract class _Favorites implements Favorites {
  const factory _Favorites(
          {@JsonKey(name: 'favorite_books') required final List<Book> books}) =
      _$_Favorites;

  factory _Favorites.fromJson(Map<String, dynamic> json) =
      _$_Favorites.fromJson;

  @override
  @JsonKey(name: 'favorite_books')
  List<Book> get books;
  @override
  @JsonKey(ignore: true)
  _$$_FavoritesCopyWith<_$_Favorites> get copyWith =>
      throw _privateConstructorUsedError;
}
