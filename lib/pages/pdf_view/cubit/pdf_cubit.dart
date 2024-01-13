import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:testproject/models/pdf_reading_state.dart';
import 'package:testproject/service/locator.dart';
import 'package:testproject/service/pdf_preferences.dart';

part 'pdf_state.dart';

/// Pdf Cubit is used to support PDF reading, allows you to download PDF and save the current page to memory
class PdfCubit extends Cubit<PdfState> {
  final pdfPreferences = getIt<PdfPreferences>();
  final String pdfUrl;

  PdfCubit(this.pdfUrl) : super(const PdfInitial()) {
    fetchPDF(pdfUrl);
  }

  /// Method fetches the PDF content, either from cache or by downloading it
  Future<void> fetchPDF(String pdfUrl) async {
    emit(const PdfLoading());
    try {
      PdfReadingState? cachedPdf = await pdfPreferences.load(pdfUrl);

      if (cachedPdf != null) {
        emit(PdfLoaded(cachedPdf));
      } else {
        final filename = pdfUrl.substring(pdfUrl.lastIndexOf('/') + 1);
        final request = await HttpClient().getUrl(Uri.parse(pdfUrl));
        final response = await request.close();
        final bytes = await consolidateHttpClientResponseBytes(response);
        final dir = await getApplicationDocumentsDirectory();
        final file = File('${dir.path}/$filename');

        await file.writeAsBytes(bytes, flush: true);
        await pdfPreferences.save(pdfUrl, file.path, 0);
        emit(PdfLoaded(PdfReadingState(pdfPath: file.path, currentPage: 0)));
      }
    } catch (error) {
      emit(PdfError(error.toString()));
    }
  }

  /// Method updates the current page of the PDF, saving to storage
  Future<void> updateCurrentPage(int newPage) async {
    if (state is PdfLoaded) {
      PdfLoaded currentState = state as PdfLoaded;
      PdfReadingState updatedPdf =
          currentState.pdf.copyWith(currentPage: newPage);
      await pdfPreferences.save(
        pdfUrl,
        updatedPdf.pdfPath,
        updatedPdf.currentPage,
      );
      emit(PdfLoaded(updatedPdf));
    }
  }

  /// Sets the PDF as ready and updates the total number of pages
  void setPdfReadyAndPages(int pages) {
    if (state is PdfLoaded) {
      PdfLoaded currentState = state as PdfLoaded;
      PdfReadingState updatedPdf = currentState.pdf.copyWith(totalPages: pages);
      emit(PdfLoaded(updatedPdf));
    }
  }

  /// Sets the PDF state to an error state with the provided error message
  void setPdfError(String error) {
    emit(PdfError(error));
  }
}
