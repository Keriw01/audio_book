import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:testproject/models/pdf.dart';
import 'package:testproject/service/locator.dart';
import 'package:testproject/service/pdf_preferences.dart';
import 'package:testproject/widgets/loading_indicator.dart';

class PdfViewSection extends StatefulWidget {
  final String pdfUrl;
  final Pdf pdf;
  const PdfViewSection({
    super.key,
    required this.pdfUrl,
    required this.pdf,
  });

  @override
  State<PdfViewSection> createState() => _PdfViewSectionState();
}

class _PdfViewSectionState extends State<PdfViewSection> {
  final pdfPreferences = getIt<PdfPreferences>();
  final Completer<PDFViewController> _controller =
      Completer<PDFViewController>();
  int? pages = 0;
  int currentPage = 0;
  bool isReady = false;
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PDFView(
          filePath: widget.pdf.pdfPath,
          swipeHorizontal: true,
          autoSpacing: false,
          defaultPage: int.parse(widget.pdf.currentPage),
          fitPolicy: FitPolicy.BOTH,
          onRender: (_pages) {
            setState(() {
              pages = _pages;
              isReady = true;
            });
          },
          onError: (error) {
            setState(() {
              errorMessage = error.toString();
            });
          },
          onPageError: (page, error) {
            setState(() {
              errorMessage = '$page: ${error.toString()}';
            });
          },
          onViewCreated: (PDFViewController pdfViewController) {
            _controller.complete(pdfViewController);
          },
          onLinkHandler: (String? uri) {},
          onPageChanged: (int? page, int? total) {
            setState(() {
              currentPage = page!;
              pdfPreferences.save(
                widget.pdfUrl,
                widget.pdf.pdfPath,
                currentPage.toString(),
              );
            });
          },
        ),
        errorMessage.isEmpty
            ? !isReady
                ? const Center(
                    child: LoadingIndicator(),
                  )
                : Container()
            : Center(
                child: Text(errorMessage),
              )
      ],
    );
  }
}
