import 'package:freezed_annotation/freezed_annotation.dart';

part 'pdf_reading_state.freezed.dart';
part 'pdf_reading_state.g.dart';

/// Class about the properties of a read book in PDF format
@freezed
class PdfReadingState with _$PdfReadingState {
  const factory PdfReadingState({
    required String pdfPath,
    required int currentPage,
    int? totalPages,
  }) = _PdfReadingState;

  factory PdfReadingState.fromJson(Map<String, dynamic> json) =>
      _$PdfReadingStateFromJson(json);
}
