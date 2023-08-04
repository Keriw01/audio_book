import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/service/book_api.dart';
import 'package:testproject/service/book_detail_api.dart';
import 'package:testproject/service/books_preferences.dart';
import 'package:testproject/service/collections_api.dart';
import 'package:testproject/service/favorites_preferences.dart';
import 'package:dio/dio.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  final dio = Dio();

  getIt.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );
  getIt.registerSingleton<BooksApi>(BooksApi(dio));
  getIt.registerSingleton<CollectionsApi>(CollectionsApi(dio));
  getIt.registerSingleton<BookDetailApi>(BookDetailApi(dio));

  getIt.registerFactory<BooksPreferences>(() => BooksPreferences());
  getIt.registerFactory<FavoritesPreferences>(() => FavoritesPreferences());
}
