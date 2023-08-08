import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/service/favorites_preferences.dart';
import 'package:testproject/service/locator.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final favoritesPreferences = getIt<FavoritesPreferences>();
  FavoritesCubit() : super(const FavoritesInitial()) {
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    try {
      List<Book> favorites = await favoritesPreferences.load();
      emit(FavoritesLoaded(favorites));
    } catch (error) {
      emit(FavoritesError(error.toString()));
    }
  }

  void addToFavorites(Book book) {
    try {
      List<Book> currentFavorites =
          List.from((state as FavoritesLoaded).favoriteBooks);
      currentFavorites.add(book);
      favoritesPreferences.save(currentFavorites);
      emit(FavoritesLoaded(currentFavorites));
    } catch (error) {
      emit(FavoritesError(error.toString()));
    }
  }

  void removeFromFavorites(Book book) {
    try {
      List<Book> currentFavorites =
          List.from((state as FavoritesLoaded).favoriteBooks);
      currentFavorites.remove(book);
      favoritesPreferences.save(currentFavorites);
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
