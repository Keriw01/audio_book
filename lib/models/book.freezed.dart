// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;
  @JsonKey(name: 'simple_thumb')
  String get simpleThumb => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_audio')
  bool get hasAudio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {String title,
      String author,
      String href,
      @JsonKey(name: 'simple_thumb') String simpleThumb,
      @JsonKey(name: 'has_audio') bool hasAudio});
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? href = null,
    Object? simpleThumb = null,
    Object? hasAudio = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      simpleThumb: null == simpleThumb
          ? _value.simpleThumb
          : simpleThumb // ignore: cast_nullable_to_non_nullable
              as String,
      hasAudio: null == hasAudio
          ? _value.hasAudio
          : hasAudio // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$_BookCopyWith(_$_Book value, $Res Function(_$_Book) then) =
      __$$_BookCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String author,
      String href,
      @JsonKey(name: 'simple_thumb') String simpleThumb,
      @JsonKey(name: 'has_audio') bool hasAudio});
}

/// @nodoc
class __$$_BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res, _$_Book>
    implements _$$_BookCopyWith<$Res> {
  __$$_BookCopyWithImpl(_$_Book _value, $Res Function(_$_Book) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? href = null,
    Object? simpleThumb = null,
    Object? hasAudio = null,
  }) {
    return _then(_$_Book(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      simpleThumb: null == simpleThumb
          ? _value.simpleThumb
          : simpleThumb // ignore: cast_nullable_to_non_nullable
              as String,
      hasAudio: null == hasAudio
          ? _value.hasAudio
          : hasAudio // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Book implements _Book {
  const _$_Book(
      {required this.title,
      required this.author,
      required this.href,
      @JsonKey(name: 'simple_thumb') required this.simpleThumb,
      @JsonKey(name: 'has_audio') required this.hasAudio});

  factory _$_Book.fromJson(Map<String, dynamic> json) => _$$_BookFromJson(json);

  @override
  final String title;
  @override
  final String author;
  @override
  final String href;
  @override
  @JsonKey(name: 'simple_thumb')
  final String simpleThumb;
  @override
  @JsonKey(name: 'has_audio')
  final bool hasAudio;

  @override
  String toString() {
    return 'Book(title: $title, author: $author, href: $href, simpleThumb: $simpleThumb, hasAudio: $hasAudio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Book &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.simpleThumb, simpleThumb) ||
                other.simpleThumb == simpleThumb) &&
            (identical(other.hasAudio, hasAudio) ||
                other.hasAudio == hasAudio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, author, href, simpleThumb, hasAudio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookCopyWith<_$_Book> get copyWith =>
      __$$_BookCopyWithImpl<_$_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookToJson(
      this,
    );
  }
}

abstract class _Book implements Book {
  const factory _Book(
      {required final String title,
      required final String author,
      required final String href,
      @JsonKey(name: 'simple_thumb') required final String simpleThumb,
      @JsonKey(name: 'has_audio') required final bool hasAudio}) = _$_Book;

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

  @override
  String get title;
  @override
  String get author;
  @override
  String get href;
  @override
  @JsonKey(name: 'simple_thumb')
  String get simpleThumb;
  @override
  @JsonKey(name: 'has_audio')
  bool get hasAudio;
  @override
  @JsonKey(ignore: true)
  _$$_BookCopyWith<_$_Book> get copyWith => throw _privateConstructorUsedError;
}

FavoriteBooksResponse _$FavoriteBooksResponseFromJson(
    Map<String, dynamic> json) {
  return _FavoriteBooksResponse.fromJson(json);
}

/// @nodoc
mixin _$FavoriteBooksResponse {
  List<Book> get favoriteBooks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteBooksResponseCopyWith<FavoriteBooksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteBooksResponseCopyWith<$Res> {
  factory $FavoriteBooksResponseCopyWith(FavoriteBooksResponse value,
          $Res Function(FavoriteBooksResponse) then) =
      _$FavoriteBooksResponseCopyWithImpl<$Res, FavoriteBooksResponse>;
  @useResult
  $Res call({List<Book> favoriteBooks});
}

/// @nodoc
class _$FavoriteBooksResponseCopyWithImpl<$Res,
        $Val extends FavoriteBooksResponse>
    implements $FavoriteBooksResponseCopyWith<$Res> {
  _$FavoriteBooksResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteBooks = null,
  }) {
    return _then(_value.copyWith(
      favoriteBooks: null == favoriteBooks
          ? _value.favoriteBooks
          : favoriteBooks // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteBooksResponseCopyWith<$Res>
    implements $FavoriteBooksResponseCopyWith<$Res> {
  factory _$$_FavoriteBooksResponseCopyWith(_$_FavoriteBooksResponse value,
          $Res Function(_$_FavoriteBooksResponse) then) =
      __$$_FavoriteBooksResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Book> favoriteBooks});
}

/// @nodoc
class __$$_FavoriteBooksResponseCopyWithImpl<$Res>
    extends _$FavoriteBooksResponseCopyWithImpl<$Res, _$_FavoriteBooksResponse>
    implements _$$_FavoriteBooksResponseCopyWith<$Res> {
  __$$_FavoriteBooksResponseCopyWithImpl(_$_FavoriteBooksResponse _value,
      $Res Function(_$_FavoriteBooksResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteBooks = null,
  }) {
    return _then(_$_FavoriteBooksResponse(
      favoriteBooks: null == favoriteBooks
          ? _value._favoriteBooks
          : favoriteBooks // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteBooksResponse implements _FavoriteBooksResponse {
  const _$_FavoriteBooksResponse({required final List<Book> favoriteBooks})
      : _favoriteBooks = favoriteBooks;

  factory _$_FavoriteBooksResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteBooksResponseFromJson(json);

  final List<Book> _favoriteBooks;
  @override
  List<Book> get favoriteBooks {
    if (_favoriteBooks is EqualUnmodifiableListView) return _favoriteBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteBooks);
  }

  @override
  String toString() {
    return 'FavoriteBooksResponse(favoriteBooks: $favoriteBooks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteBooksResponse &&
            const DeepCollectionEquality()
                .equals(other._favoriteBooks, _favoriteBooks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favoriteBooks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteBooksResponseCopyWith<_$_FavoriteBooksResponse> get copyWith =>
      __$$_FavoriteBooksResponseCopyWithImpl<_$_FavoriteBooksResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteBooksResponseToJson(
      this,
    );
  }
}

abstract class _FavoriteBooksResponse implements FavoriteBooksResponse {
  const factory _FavoriteBooksResponse(
      {required final List<Book> favoriteBooks}) = _$_FavoriteBooksResponse;

  factory _FavoriteBooksResponse.fromJson(Map<String, dynamic> json) =
      _$_FavoriteBooksResponse.fromJson;

  @override
  List<Book> get favoriteBooks;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteBooksResponseCopyWith<_$_FavoriteBooksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
