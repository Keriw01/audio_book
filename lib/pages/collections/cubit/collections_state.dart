part of 'collections_cubit.dart';

@immutable
abstract class CollectionsState {
  const CollectionsState();
}

class CollectionsInitial extends CollectionsState {
  const CollectionsInitial();
}

class CollectionsLoading extends CollectionsState {
  const CollectionsLoading();
}

class CollectionsLoaded extends CollectionsState {
  final List<Collection> collections;
  const CollectionsLoaded(this.collections);
}

class CollectionsError extends CollectionsState {
  final String? message;
  const CollectionsError(this.message);
}
