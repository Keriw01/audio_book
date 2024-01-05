import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/service/locator.dart';

import 'package:testproject/models/pdf_reading_state.dart';

final prefs = getIt<SharedPreferences>();

/// Class to handle saving and loading PDF reading state from SharedPreferences
class PdfPreferences {
  /// Saves the PDF reading state to SharedPreferences.
  ///
  /// Parameters:
  ///   - pdfUrlKey: The key under which the PDF reading state will be stored.
  ///   - pdfPath: The path of the PDF file.
  ///   - currentPage: The current page being read in the PDF.
  Future<void> save(
    String pdfUrlKey,
    String pdfPath,
    int currentPage,
  ) async {
    // Create a PdfReadingState object with the provided values
    PdfReadingState pdf =
        PdfReadingState(pdfPath: pdfPath, currentPage: currentPage);

    // Encode the PdfReadingState to JSON and save it to SharedPreferences
    await prefs.setString(pdfUrlKey, jsonEncode(pdf.toJson()));
  }

  /// Loads the PDF reading state from SharedPreferences.
  ///
  /// Parameters:
  ///   - pdfUrlKey: The key under which the PDF reading state is stored.
  Future<PdfReadingState?> load(String pdfUrlKey) async {
    String? pdfJson = prefs.getString(pdfUrlKey);

    // If the JSON string is not null, decode it and return the PdfReadingState
    if (pdfJson != null) {
      PdfReadingState pdfCached = PdfReadingState.fromJson(jsonDecode(pdfJson));
      return pdfCached;
    }
    return null;
  }
}
