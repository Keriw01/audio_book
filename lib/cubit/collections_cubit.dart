import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testproject/models/collection.dart';
import 'package:testproject/service/collections_api.dart';
import 'package:testproject/service/locator.dart';

part 'collections_state.dart';

class CollectionsCubit extends Cubit<CollectionsState> {
  CollectionsCubit() : super(const CollectionsInitial()) {
    fetchCollections();
  }

  Future<void> _fetchCollections() async {
    try {
      List<Collection> collections =
          await getIt<CollectionsApi>().getCollections();
      emit(CollectionsLoaded(collections));
    } catch (error) {
      emit(CollectionsError(error.toString()));
    }
  }

  void fetchCollections() {
    emit(const CollectionsLoading());
    _fetchCollections();
  }

  void refreshCollection() {
    emit(const CollectionsLoading());
    _fetchCollections();
  }
}
