// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_reading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PdfReadingState _$PdfReadingStateFromJson(Map<String, dynamic> json) {
  return _PdfReadingState.fromJson(json);
}

/// @nodoc
mixin _$PdfReadingState {
  String get pdfPath => throw _privateConstructorUsedError;
  String get currentPage => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PdfReadingStateCopyWith<PdfReadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfReadingStateCopyWith<$Res> {
  factory $PdfReadingStateCopyWith(
          PdfReadingState value, $Res Function(PdfReadingState) then) =
      _$PdfReadingStateCopyWithImpl<$Res, PdfReadingState>;
  @useResult
  $Res call({String pdfPath, String currentPage, int? totalPages});
}

/// @nodoc
class _$PdfReadingStateCopyWithImpl<$Res, $Val extends PdfReadingState>
    implements $PdfReadingStateCopyWith<$Res> {
  _$PdfReadingStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_PdfReadingStateCopyWith<$Res>
    implements $PdfReadingStateCopyWith<$Res> {
  factory _$$_PdfReadingStateCopyWith(
          _$_PdfReadingState value, $Res Function(_$_PdfReadingState) then) =
      __$$_PdfReadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pdfPath, String currentPage, int? totalPages});
}

/// @nodoc
class __$$_PdfReadingStateCopyWithImpl<$Res>
    extends _$PdfReadingStateCopyWithImpl<$Res, _$_PdfReadingState>
    implements _$$_PdfReadingStateCopyWith<$Res> {
  __$$_PdfReadingStateCopyWithImpl(
      _$_PdfReadingState _value, $Res Function(_$_PdfReadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfPath = null,
    Object? currentPage = null,
    Object? totalPages = freezed,
  }) {
    return _then(_$_PdfReadingState(
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
class _$_PdfReadingState implements _PdfReadingState {
  const _$_PdfReadingState(
      {required this.pdfPath, required this.currentPage, this.totalPages});

  factory _$_PdfReadingState.fromJson(Map<String, dynamic> json) =>
      _$$_PdfReadingStateFromJson(json);

  @override
  final String pdfPath;
  @override
  final String currentPage;
  @override
  final int? totalPages;

  @override
  String toString() {
    return 'PdfReadingState(pdfPath: $pdfPath, currentPage: $currentPage, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PdfReadingState &&
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
  _$$_PdfReadingStateCopyWith<_$_PdfReadingState> get copyWith =>
      __$$_PdfReadingStateCopyWithImpl<_$_PdfReadingState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PdfReadingStateToJson(
      this,
    );
  }
}

abstract class _PdfReadingState implements PdfReadingState {
  const factory _PdfReadingState(
      {required final String pdfPath,
      required final String currentPage,
      final int? totalPages}) = _$_PdfReadingState;

  factory _PdfReadingState.fromJson(Map<String, dynamic> json) =
      _$_PdfReadingState.fromJson;

  @override
  String get pdfPath;
  @override
  String get currentPage;
  @override
  int? get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$_PdfReadingStateCopyWith<_$_PdfReadingState> get copyWith =>
      throw _privateConstructorUsedError;
}
