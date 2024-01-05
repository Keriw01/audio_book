import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testproject/blocs/auth/auth_bloc.dart';
import 'package:testproject/exceptions/exception.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/repositories/favorite_books_repository.dart';

part 'favorites_state.dart';

/// Favorites Cubit used to manage your favorite books in the application
class FavoritesCubit extends Cubit<FavoritesState> {
  late final AuthBloc _authBloc;
  late final FavoriteBooksRepository _favoriteBooksRepository;
  FavoritesCubit(BuildContext context)
      : _authBloc = context.read<AuthBloc>(),
        _favoriteBooksRepository = FavoriteBooksRepository(),
        super(const FavoritesInitial());

  /// Method to load favorite books
  Future<void> loadFavorites() async {
    try {
      await _authBloc.refreshTokenIfNeeded();

      List<Book> favorites = await _favoriteBooksRepository
          .getFavoriteBooks(_authBloc.state.currentUser!.userId.toString());

      emit(FavoritesLoaded(favorites));
    } on NoConnectionException {
      emit(FavoritesError(S.current.networkError));
    } on DefaultException {
      emit(FavoritesError(S.current.defaultError));
    } catch (error) {
      print(error.toString());
    }
  }

  /// Method to add a book to favorites
  Future<void> addToFavorites(Book book) async {
    try {
      await _authBloc.refreshTokenIfNeeded();

      List<Book> currentFavorites =
          List.from((state as FavoritesLoaded).favoriteBooks);
      _favoriteBooksRepository.saveFavoriteBook(
        book,
        _authBloc.state.currentUser!.userId.toString(),
      );
      currentFavorites.add(book);
      emit(FavoritesLoaded(currentFavorites));
    } on NoConnectionException {
      emit(FavoritesError(S.current.networkError));
    } on DefaultException {
      emit(FavoritesError(S.current.defaultError));
    } catch (error) {
      print(error.toString());
    }
  }

  /// Method to remove a book from favorites
  Future<void> removeFromFavorites(Book book) async {
    try {
      await _authBloc.refreshTokenIfNeeded();
      List<Book> currentFavorites =
          List.from((state as FavoritesLoaded).favoriteBooks);
      _favoriteBooksRepository.deleteFavoriteBook(
        book.title,
        _authBloc.state.currentUser!.userId.toString(),
      );
      currentFavorites.remove(book);
      emit(FavoritesLoaded(currentFavorites));
    } on NoConnectionException {
      emit(FavoritesError(S.current.networkError));
    } on DefaultException {
      emit(FavoritesError(S.current.defaultError));
    } catch (error) {
      print(error.toString());
    }
  }

  /// Method to get a list of books without favorites
  List<Book> booksWithoutFavorite(List<Book> books) {
    List<Book> booksWithoutFavorite = [];
    final currentState = state;
    if (currentState is FavoritesLoaded) {
      booksWithoutFavorite = books
          .where((book) => !currentState.favoriteBooks.contains(book))
          .toList();
    }
    return booksWithoutFavorite;
  }

  /// Method to get a list of favorite books
  List<Book> booksFavorites(List<Book> books) {
    List<Book> favorites = [];
    final currentState = state;
    if (currentState is FavoritesLoaded) {
      favorites = books
          .where((book) => currentState.favoriteBooks.contains(book))
          .toList();
    }

    return favorites;
  }

  /// Method to check if a book is favorited
  bool isFavorited(Book book) {
    List<Book> currentFavorites =
        List.from((state as FavoritesLoaded).favoriteBooks);
    return currentFavorites.contains(book);
  }

  /// Method to get the count of favorite books
  int getCountFavorites() {
    final currentState = state;
    if (currentState is FavoritesLoaded) {
      return currentState.favoriteBooks.length;
    }
    return 0;
  }
}
