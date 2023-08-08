// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookMetadata _$BookMetadataFromJson(Map<String, dynamic> json) {
  return _BookMetadata.fromJson(json);
}

/// @nodoc
mixin _$BookMetadata {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookMetadataCopyWith<BookMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookMetadataCopyWith<$Res> {
  factory $BookMetadataCopyWith(
          BookMetadata value, $Res Function(BookMetadata) then) =
      _$BookMetadataCopyWithImpl<$Res, BookMetadata>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$BookMetadataCopyWithImpl<$Res, $Val extends BookMetadata>
    implements $BookMetadataCopyWith<$Res> {
  _$BookMetadataCopyWithImpl(this._value, this._then);

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
abstract class _$$_BookMetadataCopyWith<$Res>
    implements $BookMetadataCopyWith<$Res> {
  factory _$$_BookMetadataCopyWith(
          _$_BookMetadata value, $Res Function(_$_BookMetadata) then) =
      __$$_BookMetadataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_BookMetadataCopyWithImpl<$Res>
    extends _$BookMetadataCopyWithImpl<$Res, _$_BookMetadata>
    implements _$$_BookMetadataCopyWith<$Res> {
  __$$_BookMetadataCopyWithImpl(
      _$_BookMetadata _value, $Res Function(_$_BookMetadata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_BookMetadata(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookMetadata implements _BookMetadata {
  const _$_BookMetadata({required this.name});

  factory _$_BookMetadata.fromJson(Map<String, dynamic> json) =>
      _$$_BookMetadataFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'BookMetadata(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookMetadata &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookMetadataCopyWith<_$_BookMetadata> get copyWith =>
      __$$_BookMetadataCopyWithImpl<_$_BookMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookMetadataToJson(
      this,
    );
  }
}

abstract class _BookMetadata implements BookMetadata {
  const factory _BookMetadata({required final String name}) = _$_BookMetadata;

  factory _BookMetadata.fromJson(Map<String, dynamic> json) =
      _$_BookMetadata.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_BookMetadataCopyWith<_$_BookMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}
