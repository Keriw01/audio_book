import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/pages/collections/cubit/collections_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/pages/collections/widgets/collection_item.dart';
import 'package:testproject/routes/app_router.gr.dart';
import 'package:testproject/widgets/custom_divider.dart';
import 'package:testproject/widgets/loading_indicator.dart';

/// Collections Page is used to display downloaded collections in the form of a vertical list, allows you to search for collections and go to the user's profile.
@AutoRoute()
class CollectionsPage extends StatefulWidget {
  const CollectionsPage({super.key});

  @override
  State<CollectionsPage> createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  /// Listener method to handle state changes and show SnackBars which right content and allow to refresh data
  void _listener(BuildContext context, CollectionsState state) {
    if (state is CollectionsError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).errorFetchCollection),
          actionOverflowThreshold: 1,
          action: SnackBarAction(
            label: S.of(context).refreshData,
            onPressed: () =>
                context.read<CollectionsCubit>().fetchCollections(),
          ),
          duration: const Duration(
            seconds: 30,
          ),
        ),
      );
    }
  }

  final TextEditingController _searchController = TextEditingController();
  bool isSearching = false;
  String searchText = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearching
            ? TextField(
                autofocus: true,
                controller: _searchController,
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: const InputDecoration(
                  hintText: 'Fantastyka',
                  hintStyle: TextStyle(color: Colors.white54),
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    searchText = value;
                  });
                },
              )
            : Text(S.current.homePageTitle),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isSearching = !isSearching;
                searchText = '';
                _searchController.clear();
              });
            },
            icon: Icon(isSearching ? Icons.clear : Icons.search),
          )
        ],
        leading: IconButton(
          onPressed: () => context.router.navigate(const ProfileRoute()),
          icon: const Icon(Icons.person),
        ),
      ),
      body: BlocConsumer<CollectionsCubit, CollectionsState>(
        builder: (context, state) {
          if (state is CollectionsLoading) {
            return const LoadingIndicator();
          }

          // Filter collections based on the search text when searching is enabled.
          if (state is CollectionsLoaded) {
            final filteredCollections = isSearching
                ? state.collections
                    .where(
                      (collection) => collection.title
                          .toLowerCase()
                          .contains(searchText.toLowerCase()),
                    )
                    .toList()
                : state.collections;

            // Display a ListView of collections with separators between items.
            return ListView.separated(
              itemCount: filteredCollections.length,
              separatorBuilder: (context, index) => const CustomDivider(),
              itemBuilder: (_, index) => CollectionItem(
                collection: filteredCollections[index],
              ),
            );
          }

          // If the state is not CollectionsLoading or CollectionsLoaded, return an empty SizedBox.
          return const SizedBox.shrink();
        },
        listener: _listener,
      ),
    );
  }
}
