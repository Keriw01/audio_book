import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/service/locator.dart';

import 'package:testproject/models/pdf.dart';

final prefs = getIt<SharedPreferences>();

class PdfPreferences {
  Future<void> save(
    String pdfUrlKey,
    String pdfPath,
    String currentPage,
  ) async {
    Pdf pdf = Pdf(pdfPath: pdfPath, currentPage: currentPage);
    await prefs.setString(pdfUrlKey, jsonEncode(pdf.toJson()));
  }

  Future<Pdf?> load(String pdfUrlKey) async {
    String? pdfJson = prefs.getString(pdfUrlKey);
    if (pdfJson != null) {
      Pdf pdfCached = Pdf.fromJson(jsonDecode(pdfJson));
      return pdfCached;
    }
    return null;
  }
}
