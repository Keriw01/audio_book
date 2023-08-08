import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:testproject/models/pdf.dart';
import 'package:testproject/service/locator.dart';
import 'package:testproject/service/pdf_preferences.dart';

part 'pdf_state.dart';

class PdfCubit extends Cubit<PdfState> {
  final String pdfUrl;
  PdfCubit(this.pdfUrl) : super(const PdfInitial()) {
    _fetchPDF(pdfUrl);
  }

  Future<void> _fetchPDF(String pdfUrl) async {
    emit(const PdfLoading());
    try {
      final pdfPreferences = getIt<PdfPreferences>();
      Pdf? cachedPdf = await pdfPreferences.load(pdfUrl);

      if (cachedPdf != null) {
        emit(PdfLoaded(cachedPdf));
      } else {
        final filename = pdfUrl.substring(pdfUrl.lastIndexOf("/") + 1);
        final request = await HttpClient().getUrl(Uri.parse(pdfUrl));
        final response = await request.close();
        final bytes = await consolidateHttpClientResponseBytes(response);
        final dir = await getApplicationDocumentsDirectory();
        final file = File("${dir.path}/$filename");

        await file.writeAsBytes(bytes, flush: true);
        await pdfPreferences.save(pdfUrl, file.path, '0');
        emit(PdfLoaded(Pdf(pdfPath: file.path, currentPage: '0')));
      }
    } catch (error) {
      emit(PdfError(error.toString()));
    }
  }
}
