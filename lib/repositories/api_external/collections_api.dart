import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:testproject/models/collection.dart';
part 'collections_api.g.dart';

/// Retrofit API for interacting with collections from the 'https://wolnelektury.pl/' base URL.
@RestApi(baseUrl: 'https://wolnelektury.pl/')
abstract class CollectionsApi {
  factory CollectionsApi(Dio dio) = _CollectionsApi;

  /// Retrofit GET request to fetch a list of collections from the API
  @GET('api/collections/')
  Future<List<Collection>> getCollections();
}
