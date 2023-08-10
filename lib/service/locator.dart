import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/service/book_api.dart';
import 'package:testproject/service/books_preferences.dart';
import 'package:testproject/service/collections_api.dart';
import 'package:testproject/service/favorites_preferences.dart';
import 'package:dio/dio.dart';
import 'package:testproject/service/pdf_preferences.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  final dio = Dio();

  getIt.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );
  getIt.registerSingleton<BooksApi>(BooksApi(dio));
  getIt.registerSingleton<CollectionsApi>(CollectionsApi(dio));

  getIt.registerFactory<BooksPreferences>(() => BooksPreferences());
  getIt.registerFactory<FavoritesPreferences>(() => FavoritesPreferences());
  getIt.registerFactory<PdfPreferences>(() => PdfPreferences());
}
