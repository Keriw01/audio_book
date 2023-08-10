import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:testproject/cubit/pdf_cubit.dart';
import 'package:testproject/models/pdf_reading_state.dart';

class PdfViewSection extends StatelessWidget {
  final String pdfUrl;
  final PdfReadingState pdf;

  const PdfViewSection({
    super.key,
    required this.pdfUrl,
    required this.pdf,
  });

  @override
  Widget build(BuildContext context) {
    final Completer<PDFViewController> _controller =
        Completer<PDFViewController>();
    final pdfCubit = context.read<PdfCubit>();

    return PDFView(
      filePath: pdf.pdfPath,
      swipeHorizontal: true,
      autoSpacing: false,
      defaultPage: pdf.currentPage,
      fitPolicy: FitPolicy.BOTH,
      onRender: (pages) {
        pdfCubit.setPdfReadyAndPages(pages!);
      },
      onError: (error) {
        pdfCubit.setPdfError(error.toString());
      },
      onPageError: (page, error) {
        pdfCubit.setPdfError('$page: ${error.toString()}');
      },
      onViewCreated: (PDFViewController pdfViewController) {
        _controller.complete(pdfViewController);
      },
      onPageChanged: (int? page, int? total) {
        pdfCubit.updateCurrentPage(page!);
      },
    );
  }
}
