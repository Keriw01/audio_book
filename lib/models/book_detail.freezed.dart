// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookDetail _$BookDetailFromJson(Map<String, dynamic> json) {
  return _BookDetail.fromJson(json);
}

/// @nodoc
mixin _$BookDetail {
  List<BookMetadata> get genres => throw _privateConstructorUsedError;
  List<BookMetadata> get authors => throw _privateConstructorUsedError;
  @JsonKey(name: 'fragment_data')
  BookFragmentData? get fragmentData => throw _privateConstructorUsedError;
  String get pdf => throw _privateConstructorUsedError;
  String get html => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDetailCopyWith<BookDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailCopyWith<$Res> {
  factory $BookDetailCopyWith(
          BookDetail value, $Res Function(BookDetail) then) =
      _$BookDetailCopyWithImpl<$Res, BookDetail>;
  @useResult
  $Res call(
      {List<BookMetadata> genres,
      List<BookMetadata> authors,
      @JsonKey(name: 'fragment_data') BookFragmentData? fragmentData,
      String pdf,
      String html});

  $BookFragmentDataCopyWith<$Res>? get fragmentData;
}

/// @nodoc
class _$BookDetailCopyWithImpl<$Res, $Val extends BookDetail>
    implements $BookDetailCopyWith<$Res> {
  _$BookDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
    Object? authors = null,
    Object? fragmentData = freezed,
    Object? pdf = null,
    Object? html = null,
  }) {
    return _then(_value.copyWith(
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<BookMetadata>,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<BookMetadata>,
      fragmentData: freezed == fragmentData
          ? _value.fragmentData
          : fragmentData // ignore: cast_nullable_to_non_nullable
              as BookFragmentData?,
      pdf: null == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookFragmentDataCopyWith<$Res>? get fragmentData {
    if (_value.fragmentData == null) {
      return null;
    }

    return $BookFragmentDataCopyWith<$Res>(_value.fragmentData!, (value) {
      return _then(_value.copyWith(fragmentData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookDetailCopyWith<$Res>
    implements $BookDetailCopyWith<$Res> {
  factory _$$_BookDetailCopyWith(
          _$_BookDetail value, $Res Function(_$_BookDetail) then) =
      __$$_BookDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BookMetadata> genres,
      List<BookMetadata> authors,
      @JsonKey(name: 'fragment_data') BookFragmentData? fragmentData,
      String pdf,
      String html});

  @override
  $BookFragmentDataCopyWith<$Res>? get fragmentData;
}

/// @nodoc
class __$$_BookDetailCopyWithImpl<$Res>
    extends _$BookDetailCopyWithImpl<$Res, _$_BookDetail>
    implements _$$_BookDetailCopyWith<$Res> {
  __$$_BookDetailCopyWithImpl(
      _$_BookDetail _value, $Res Function(_$_BookDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
    Object? authors = null,
    Object? fragmentData = freezed,
    Object? pdf = null,
    Object? html = null,
  }) {
    return _then(_$_BookDetail(
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<BookMetadata>,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<BookMetadata>,
      fragmentData: freezed == fragmentData
          ? _value.fragmentData
          : fragmentData // ignore: cast_nullable_to_non_nullable
              as BookFragmentData?,
      pdf: null == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookDetail implements _BookDetail {
  const _$_BookDetail(
      {required final List<BookMetadata> genres,
      required final List<BookMetadata> authors,
      @JsonKey(name: 'fragment_data') required this.fragmentData,
      required this.pdf,
      required this.html})
      : _genres = genres,
        _authors = authors;

  factory _$_BookDetail.fromJson(Map<String, dynamic> json) =>
      _$$_BookDetailFromJson(json);

  final List<BookMetadata> _genres;
  @override
  List<BookMetadata> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<BookMetadata> _authors;
  @override
  List<BookMetadata> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  @override
  @JsonKey(name: 'fragment_data')
  final BookFragmentData? fragmentData;
  @override
  final String pdf;
  @override
  final String html;

  @override
  String toString() {
    return 'BookDetail(genres: $genres, authors: $authors, fragmentData: $fragmentData, pdf: $pdf, html: $html)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookDetail &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            (identical(other.fragmentData, fragmentData) ||
                other.fragmentData == fragmentData) &&
            (identical(other.pdf, pdf) || other.pdf == pdf) &&
            (identical(other.html, html) || other.html == html));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_authors),
      fragmentData,
      pdf,
      html);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookDetailCopyWith<_$_BookDetail> get copyWith =>
      __$$_BookDetailCopyWithImpl<_$_BookDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookDetailToJson(
      this,
    );
  }
}

abstract class _BookDetail implements BookDetail {
  const factory _BookDetail(
      {required final List<BookMetadata> genres,
      required final List<BookMetadata> authors,
      @JsonKey(name: 'fragment_data')
      required final BookFragmentData? fragmentData,
      required final String pdf,
      required final String html}) = _$_BookDetail;

  factory _BookDetail.fromJson(Map<String, dynamic> json) =
      _$_BookDetail.fromJson;

  @override
  List<BookMetadata> get genres;
  @override
  List<BookMetadata> get authors;
  @override
  @JsonKey(name: 'fragment_data')
  BookFragmentData? get fragmentData;
  @override
  String get pdf;
  @override
  String get html;
  @override
  @JsonKey(ignore: true)
  _$$_BookDetailCopyWith<_$_BookDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
