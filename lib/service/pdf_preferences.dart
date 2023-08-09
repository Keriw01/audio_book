import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/service/locator.dart';

import 'package:testproject/models/pdf_reading_state.dart';

final prefs = getIt<SharedPreferences>();

class PdfPreferences {
  Future<void> save(
    String pdfUrlKey,
    String pdfPath,
    int currentPage,
  ) async {
    PdfReadingState pdf =
        PdfReadingState(pdfPath: pdfPath, currentPage: currentPage);
    await prefs.setString(pdfUrlKey, jsonEncode(pdf.toJson()));
  }

  Future<PdfReadingState?> load(String pdfUrlKey) async {
    String? pdfJson = prefs.getString(pdfUrlKey);
    if (pdfJson != null) {
      PdfReadingState pdfCached = PdfReadingState.fromJson(jsonDecode(pdfJson));
      return pdfCached;
    }
    return null;
  }
}
