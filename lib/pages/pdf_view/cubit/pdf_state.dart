part of 'pdf_cubit.dart';

@immutable
abstract class PdfState {
  const PdfState();
}

class PdfInitial extends PdfState {
  const PdfInitial();
}

class PdfLoading extends PdfState {
  const PdfLoading();
}

class PdfLoaded extends PdfState {
  final PdfReadingState pdf;
  const PdfLoaded(this.pdf);
}

class PdfError extends PdfState {
  final String message;
  const PdfError(this.message);
}
