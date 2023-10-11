import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:testproject/models/collection.dart';
part 'collections_api.g.dart';

@RestApi(baseUrl: 'https://wolnelektury.pl/')
abstract class CollectionsApi {
  factory CollectionsApi(Dio dio) = _CollectionsApi;
  @GET('api/collections/')
  Future<List<Collection>> getCollections();
}
