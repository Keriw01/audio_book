part of 'liked_cubit.dart';

@immutable
abstract class LikedState {
  const LikedState();
}

class LikedInitial extends LikedState {
  const LikedInitial();
}

class LikedLoaded extends LikedState {
  final List<Book> likedBooks;
  const LikedLoaded(this.likedBooks);
}

class LikedError extends LikedState {
  final String message;
  const LikedError(this.message);
}
