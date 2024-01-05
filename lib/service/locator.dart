import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/repositories/api/api_client.dart';
import 'package:testproject/repositories/api_external/book_api.dart';
import 'package:testproject/service/books_preferences.dart';
import 'package:testproject/repositories/api_external/collections_api.dart';
import 'package:dio/dio.dart';
import 'package:testproject/service/pdf_preferences.dart';

final getIt = GetIt.instance;

/// Asynchronous function to set up the service locator and register dependencies.
/// It initializes and registers instances of shared preferences, API clients, and other services.
Future<void> setupLocator() async {
  // Create Dio instance for network requests
  final dio = Dio();

  // Register shared preferences as a singleton
  getIt.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );

  // Register APIs as singletons with Dio instance
  getIt.registerSingleton<BooksApi>(BooksApi(dio));
  getIt.registerSingleton<CollectionsApi>(CollectionsApi(dio));
  getIt.registerSingleton<ApiClient>(ApiClient(dio));

  // Register services as factories for lazy initialization
  getIt.registerFactory<BooksPreferences>(() => BooksPreferences());
  getIt.registerFactory<PdfPreferences>(() => PdfPreferences());
}
