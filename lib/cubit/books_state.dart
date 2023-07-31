part of 'books_cubit.dart';

@immutable
abstract class BooksState {
  const BooksState();
}

class BooksInitial extends BooksState {
  const BooksInitial();
}

class BooksLoading extends BooksState {
  const BooksLoading();
}

class BooksLoaded extends BooksState {
  final List<Book> books;
  const BooksLoaded(this.books);
}

class BooksError extends BooksState {
  final String message;
  const BooksError(this.message);
}
