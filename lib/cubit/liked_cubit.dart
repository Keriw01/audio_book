import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/service/liked_preferences.dart';
import 'package:testproject/service/locator.dart';

part 'liked_state.dart';

class LikedCubit extends Cubit<LikedState> {
  final likedPreferences = getIt<LikedPreferences>();
  LikedCubit() : super(const LikedInitial()) {
    _loadLiked();
  }

  Future<void> _loadLiked() async {
    try {
      List<Book> likedBooks = await likedPreferences.load();
      emit(LikedLoaded(likedBooks));
    } catch (error) {
      emit(LikedError(error.toString()));
    }
  }

  void addToLiked(Book book) {
    try {
      List<Book> currentLiked = List.from((state as LikedLoaded).likedBooks);
      currentLiked.add(book);
      likedPreferences.save(currentLiked);
      emit(LikedLoaded(currentLiked));
    } catch (error) {
      emit(LikedError(error.toString()));
    }
  }

  void removeFromLiked(Book book) {
    try {
      List<Book> currentLiked = List.from((state as LikedLoaded).likedBooks);
      currentLiked.remove(book);
      likedPreferences.save(currentLiked);
      emit(LikedLoaded(currentLiked));
    } catch (error) {
      emit(LikedError(error.toString()));
    }
  }

  bool isLiked(Book book) {
    List<Book> currentLiked = List.from((state as LikedLoaded).likedBooks);
    return currentLiked.contains(book);
  }
}
