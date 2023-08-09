// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pdf _$PdfFromJson(Map<String, dynamic> json) {
  return _Pdf.fromJson(json);
}

/// @nodoc
mixin _$Pdf {
  String get pdfPath => throw _privateConstructorUsedError;
  String get currentPage => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PdfCopyWith<Pdf> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfCopyWith<$Res> {
  factory $PdfCopyWith(Pdf value, $Res Function(Pdf) then) =
      _$PdfCopyWithImpl<$Res, Pdf>;
  @useResult
  $Res call({String pdfPath, String currentPage, int? totalPages});
}

/// @nodoc
class _$PdfCopyWithImpl<$Res, $Val extends Pdf> implements $PdfCopyWith<$Res> {
  _$PdfCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfPath = null,
    Object? currentPage = null,
    Object? totalPages = freezed,
  }) {
    return _then(_value.copyWith(
      pdfPath: null == pdfPath
          ? _value.pdfPath
          : pdfPath // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as String,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PdfCopyWith<$Res> implements $PdfCopyWith<$Res> {
  factory _$$_PdfCopyWith(_$_Pdf value, $Res Function(_$_Pdf) then) =
      __$$_PdfCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pdfPath, String currentPage, int? totalPages});
}

/// @nodoc
class __$$_PdfCopyWithImpl<$Res> extends _$PdfCopyWithImpl<$Res, _$_Pdf>
    implements _$$_PdfCopyWith<$Res> {
  __$$_PdfCopyWithImpl(_$_Pdf _value, $Res Function(_$_Pdf) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfPath = null,
    Object? currentPage = null,
    Object? totalPages = freezed,
  }) {
    return _then(_$_Pdf(
      pdfPath: null == pdfPath
          ? _value.pdfPath
          : pdfPath // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as String,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pdf implements _Pdf {
  const _$_Pdf(
      {required this.pdfPath, required this.currentPage, this.totalPages});

  factory _$_Pdf.fromJson(Map<String, dynamic> json) => _$$_PdfFromJson(json);

  @override
  final String pdfPath;
  @override
  final String currentPage;
  @override
  final int? totalPages;

  @override
  String toString() {
    return 'Pdf(pdfPath: $pdfPath, currentPage: $currentPage, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pdf &&
            (identical(other.pdfPath, pdfPath) || other.pdfPath == pdfPath) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pdfPath, currentPage, totalPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PdfCopyWith<_$_Pdf> get copyWith =>
      __$$_PdfCopyWithImpl<_$_Pdf>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PdfToJson(
      this,
    );
  }
}

abstract class _Pdf implements Pdf {
  const factory _Pdf(
      {required final String pdfPath,
      required final String currentPage,
      final int? totalPages}) = _$_Pdf;

  factory _Pdf.fromJson(Map<String, dynamic> json) = _$_Pdf.fromJson;

  @override
  String get pdfPath;
  @override
  String get currentPage;
  @override
  int? get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$_PdfCopyWith<_$_Pdf> get copyWith => throw _privateConstructorUsedError;
}
