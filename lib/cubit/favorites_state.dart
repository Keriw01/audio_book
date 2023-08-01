part of 'favorites_cubit.dart';

@immutable
abstract class FavoritesState {
  const FavoritesState();
}

class FavoritesInitial extends FavoritesState {
  const FavoritesInitial();
}

class FavoritesLoaded extends FavoritesState {
  final List<Book> favoriteBooks;
  const FavoritesLoaded(this.favoriteBooks);
}

class FavoritesError extends FavoritesState {
  final String message;
  const FavoritesError(this.message);
}
