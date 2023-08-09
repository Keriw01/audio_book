// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_reading_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PdfReadingState _$$_PdfReadingStateFromJson(Map<String, dynamic> json) =>
    _$_PdfReadingState(
      pdfPath: json['pdfPath'] as String,
      currentPage: json['currentPage'] as String,
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$$_PdfReadingStateToJson(_$_PdfReadingState instance) =>
    <String, dynamic>{
      'pdfPath': instance.pdfPath,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
    };
