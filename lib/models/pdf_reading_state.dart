import 'package:freezed_annotation/freezed_annotation.dart';

part 'pdf_reading_state.freezed.dart';
part 'pdf_reading_state.g.dart';

@freezed
class PdfReadingState with _$PdfReadingState {
  const factory PdfReadingState({
    required String pdfPath,
    required String currentPage,
    int? totalPages,
  }) = _PdfReadingState;

  factory PdfReadingState.fromJson(Map<String, dynamic> json) =>
      _$PdfReadingStateFromJson(json);
}
