import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testproject/blocs/auth/auth_bloc.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/repositories/favorite_books_repository.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  late final AuthBloc _authBloc;
  late final FavoriteBooksRepository _favoriteBooksRepository;
  FavoritesCubit(BuildContext context)
      : _authBloc = context.read<AuthBloc>(),
        _favoriteBooksRepository = FavoriteBooksRepository(),
        super(const FavoritesInitial()) {
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    try {
      List<Book> favorites = await _favoriteBooksRepository
          .getFavoriteBooks(_authBloc.state.currentUser!.userId.toString());

      emit(FavoritesLoaded(favorites));
    } catch (error) {
      print(error);
      emit(FavoritesError(error.toString()));
    }
  }

  void addToFavorites(Book book) {
    try {
      List<Book> currentFavorites =
          List.from((state as FavoritesLoaded).favoriteBooks);
      _favoriteBooksRepository.saveFavoriteBook(
        book,
        _authBloc.state.currentUser!.userId.toString(),
      );
      currentFavorites.add(book);
      emit(FavoritesLoaded(currentFavorites));
    } catch (error) {
      emit(FavoritesError(error.toString()));
    }
  }

  void removeFromFavorites(Book book) {
    try {
      List<Book> currentFavorites =
          List.from((state as FavoritesLoaded).favoriteBooks);
      _favoriteBooksRepository.deleteFavoriteBook(
        book.title,
        _authBloc.state.currentUser!.userId.toString(),
      );
      currentFavorites.remove(book);
      emit(FavoritesLoaded(currentFavorites));
    } catch (error) {
      emit(FavoritesError(error.toString()));
    }
  }

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

  bool isFavorited(Book book) {
    List<Book> currentFavorites =
        List.from((state as FavoritesLoaded).favoriteBooks);
    return currentFavorites.contains(book);
  }
}
