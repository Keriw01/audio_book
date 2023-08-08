import 'package:freezed_annotation/freezed_annotation.dart';

part 'pdf.freezed.dart';
part 'pdf.g.dart';

@freezed
class Pdf with _$Pdf {
  const factory Pdf({
    required String pdfPath,
    required String currentPage,
  }) = _Pdf;

  factory Pdf.fromJson(Map<String, dynamic> json) => _$PdfFromJson(json);
}
