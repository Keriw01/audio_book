// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_genres.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookGenres _$BookGenresFromJson(Map<String, dynamic> json) {
  return _BookGenres.fromJson(json);
}

/// @nodoc
mixin _$BookGenres {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookGenresCopyWith<BookGenres> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookGenresCopyWith<$Res> {
  factory $BookGenresCopyWith(
          BookGenres value, $Res Function(BookGenres) then) =
      _$BookGenresCopyWithImpl<$Res, BookGenres>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$BookGenresCopyWithImpl<$Res, $Val extends BookGenres>
    implements $BookGenresCopyWith<$Res> {
  _$BookGenresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookGenresCopyWith<$Res>
    implements $BookGenresCopyWith<$Res> {
  factory _$$_BookGenresCopyWith(
          _$_BookGenres value, $Res Function(_$_BookGenres) then) =
      __$$_BookGenresCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_BookGenresCopyWithImpl<$Res>
    extends _$BookGenresCopyWithImpl<$Res, _$_BookGenres>
    implements _$$_BookGenresCopyWith<$Res> {
  __$$_BookGenresCopyWithImpl(
      _$_BookGenres _value, $Res Function(_$_BookGenres) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_BookGenres(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookGenres implements _BookGenres {
  const _$_BookGenres({required this.name});

  factory _$_BookGenres.fromJson(Map<String, dynamic> json) =>
      _$$_BookGenresFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'BookGenres(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookGenres &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookGenresCopyWith<_$_BookGenres> get copyWith =>
      __$$_BookGenresCopyWithImpl<_$_BookGenres>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookGenresToJson(
      this,
    );
  }
}

abstract class _BookGenres implements BookGenres {
  const factory _BookGenres({required final String name}) = _$_BookGenres;

  factory _BookGenres.fromJson(Map<String, dynamic> json) =
      _$_BookGenres.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_BookGenresCopyWith<_$_BookGenres> get copyWith =>
      throw _privateConstructorUsedError;
}
