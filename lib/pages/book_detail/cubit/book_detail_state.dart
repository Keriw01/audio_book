part of 'book_detail_cubit.dart';

@immutable
abstract class BookDetailState {
  const BookDetailState();
}

class BookDetailInitial extends BookDetailState {
  const BookDetailInitial();
}

class BookDetailLoading extends BookDetailState {
  const BookDetailLoading();
}

class BookDetailLoaded extends BookDetailState {
  final BookDetail bookDetail;
  const BookDetailLoaded(this.bookDetail);
}

class BookDetailError extends BookDetailState {
  final String message;
  const BookDetailError(this.message);
}
