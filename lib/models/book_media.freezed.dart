// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookMedia _$BookMediaFromJson(Map<String, dynamic> json) {
  return _BookMedia.fromJson(json);
}

/// @nodoc
mixin _$BookMedia {
  String get url => throw _privateConstructorUsedError;
  String? get director => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookMediaCopyWith<BookMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookMediaCopyWith<$Res> {
  factory $BookMediaCopyWith(BookMedia value, $Res Function(BookMedia) then) =
      _$BookMediaCopyWithImpl<$Res, BookMedia>;
  @useResult
  $Res call({String url, String? director, String type, String artist});
}

/// @nodoc
class _$BookMediaCopyWithImpl<$Res, $Val extends BookMedia>
    implements $BookMediaCopyWith<$Res> {
  _$BookMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? director = freezed,
    Object? type = null,
    Object? artist = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      director: freezed == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookMediaCopyWith<$Res> implements $BookMediaCopyWith<$Res> {
  factory _$$_BookMediaCopyWith(
          _$_BookMedia value, $Res Function(_$_BookMedia) then) =
      __$$_BookMediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String? director, String type, String artist});
}

/// @nodoc
class __$$_BookMediaCopyWithImpl<$Res>
    extends _$BookMediaCopyWithImpl<$Res, _$_BookMedia>
    implements _$$_BookMediaCopyWith<$Res> {
  __$$_BookMediaCopyWithImpl(
      _$_BookMedia _value, $Res Function(_$_BookMedia) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? director = freezed,
    Object? type = null,
    Object? artist = null,
  }) {
    return _then(_$_BookMedia(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      director: freezed == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookMedia implements _BookMedia {
  const _$_BookMedia(
      {required this.url,
      required this.director,
      required this.type,
      required this.artist});

  factory _$_BookMedia.fromJson(Map<String, dynamic> json) =>
      _$$_BookMediaFromJson(json);

  @override
  final String url;
  @override
  final String? director;
  @override
  final String type;
  @override
  final String artist;

  @override
  String toString() {
    return 'BookMedia(url: $url, director: $director, type: $type, artist: $artist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookMedia &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.director, director) ||
                other.director == director) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, director, type, artist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookMediaCopyWith<_$_BookMedia> get copyWith =>
      __$$_BookMediaCopyWithImpl<_$_BookMedia>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookMediaToJson(
      this,
    );
  }
}

abstract class _BookMedia implements BookMedia {
  const factory _BookMedia(
      {required final String url,
      required final String? director,
      required final String type,
      required final String artist}) = _$_BookMedia;

  factory _BookMedia.fromJson(Map<String, dynamic> json) =
      _$_BookMedia.fromJson;

  @override
  String get url;
  @override
  String? get director;
  @override
  String get type;
  @override
  String get artist;
  @override
  @JsonKey(ignore: true)
  _$$_BookMediaCopyWith<_$_BookMedia> get copyWith =>
      throw _privateConstructorUsedError;
}
