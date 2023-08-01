import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/models/collection_detail.dart';
import 'package:testproject/service/book_api.dart';
import 'package:testproject/service/books_preferences.dart';
import 'package:testproject/service/locator.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  final String href;
  BooksCubit(this.href) : super(const BooksInitial()) {
    _fetchBooks(href);
  }

  Future<void> _fetchBooks(String href) async {
    emit(const BooksLoading());
    try {
      final bookPreferences = getIt<BooksPreferences>();
      List<Book> books = await bookPreferences.load(href);
      if (books.isEmpty) {
        final CollectionDetail response =
            await getIt<BooksApi>().getBooks(href);
        books = response.books;
        bookPreferences.save(books, href);
      }
      emit(BooksLoaded(books));
    } catch (error) {
      emit(BooksError(error.toString()));
    }
  }

  Future<void> refreshBooks(String href) async {
    await _fetchBooks(href);
  }
}
