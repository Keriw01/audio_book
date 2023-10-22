import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testproject/models/book_detail.dart';
import 'package:testproject/repositories/api_external/book_api.dart';
import 'package:testproject/service/locator.dart';

part 'book_detail_state.dart';

class BookDetailCubit extends Cubit<BookDetailState> {
  final String href;
  BookDetailCubit(this.href) : super(const BookDetailInitial()) {
    fetchBookDetail(href);
  }

  Future<void> fetchBookDetail(String href) async {
    emit(const BookDetailLoading());
    try {
      BookDetail bookDetail = await getIt<BooksApi>().getBookDetail(href);
      emit(BookDetailLoaded(bookDetail));
    } catch (error) {
      emit(BookDetailError(error.toString()));
    }
  }
}
