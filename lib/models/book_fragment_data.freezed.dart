// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_fragment_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookFragmentData _$BookFragmentDataFromJson(Map<String, dynamic> json) {
  return _BookFragmentData.fromJson(json);
}

/// @nodoc
mixin _$BookFragmentData {
  String get html => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookFragmentDataCopyWith<BookFragmentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookFragmentDataCopyWith<$Res> {
  factory $BookFragmentDataCopyWith(
          BookFragmentData value, $Res Function(BookFragmentData) then) =
      _$BookFragmentDataCopyWithImpl<$Res, BookFragmentData>;
  @useResult
  $Res call({String html});
}

/// @nodoc
class _$BookFragmentDataCopyWithImpl<$Res, $Val extends BookFragmentData>
    implements $BookFragmentDataCopyWith<$Res> {
  _$BookFragmentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? html = null,
  }) {
    return _then(_value.copyWith(
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookFragmentDataCopyWith<$Res>
    implements $BookFragmentDataCopyWith<$Res> {
  factory _$$_BookFragmentDataCopyWith(
          _$_BookFragmentData value, $Res Function(_$_BookFragmentData) then) =
      __$$_BookFragmentDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String html});
}

/// @nodoc
class __$$_BookFragmentDataCopyWithImpl<$Res>
    extends _$BookFragmentDataCopyWithImpl<$Res, _$_BookFragmentData>
    implements _$$_BookFragmentDataCopyWith<$Res> {
  __$$_BookFragmentDataCopyWithImpl(
      _$_BookFragmentData _value, $Res Function(_$_BookFragmentData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? html = null,
  }) {
    return _then(_$_BookFragmentData(
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookFragmentData implements _BookFragmentData {
  const _$_BookFragmentData({required this.html});

  factory _$_BookFragmentData.fromJson(Map<String, dynamic> json) =>
      _$$_BookFragmentDataFromJson(json);

  @override
  final String html;

  @override
  String toString() {
    return 'BookFragmentData(html: $html)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookFragmentData &&
            (identical(other.html, html) || other.html == html));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, html);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookFragmentDataCopyWith<_$_BookFragmentData> get copyWith =>
      __$$_BookFragmentDataCopyWithImpl<_$_BookFragmentData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookFragmentDataToJson(
      this,
    );
  }
}

abstract class _BookFragmentData implements BookFragmentData {
  const factory _BookFragmentData({required final String html}) =
      _$_BookFragmentData;

  factory _BookFragmentData.fromJson(Map<String, dynamic> json) =
      _$_BookFragmentData.fromJson;

  @override
  String get html;
  @override
  @JsonKey(ignore: true)
  _$$_BookFragmentDataCopyWith<_$_BookFragmentData> get copyWith =>
      throw _privateConstructorUsedError;
}
