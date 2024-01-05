import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/pages/pdf_view/cubit/pdf_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/pages/pdf_view/widgets/pdf_view_section.dart';
import 'package:testproject/widgets/loading_indicator.dart';

/// PDF Page displays a PDF document based on the provided title and PDF URL.
@AutoRoute()
class PdfPage extends StatelessWidget {
  final String title;
  final String pdfUrl;

  const PdfPage({Key? key, required this.title, required this.pdfUrl})
      : super(key: key);

  /// Listener function to handle PDF-related state changes and show error messages
  void _listener(BuildContext context, PdfState state) {
    if (state is PdfError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).errorOccured + state.message),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PdfCubit(pdfUrl),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: BlocConsumer<PdfCubit, PdfState>(
          builder: (context, state) {
            if (state is PdfLoading) {
              return const LoadingIndicator();
            }

            if (state is PdfLoaded) {
              return PdfViewSection(
                pdf: state.pdf,
                pdfUrl: pdfUrl,
              );
            }

            return const SizedBox.shrink();
          },
          listener: _listener,
        ),
      ),
    );
  }
}
