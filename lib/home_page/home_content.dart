import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/collections_provider.dart';
import 'collection_item.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CollectionsProvider>(
      builder: (_, provider, __) {
        if (provider.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (provider.errorMessage.isNotEmpty) {
          return Center(
            child: Column(
              children: [
                const Text("An error occured:"),
                Text(provider.errorMessage),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    provider.refreshCollection();
                  },
                  child: const Text('Refresh data'),
                )
              ],
            ),
          );
        } else {
          return ListView.builder(
            itemCount: provider.collections.length,
            itemBuilder: (_, index) => CollectionItem(
              title: provider.collections[index].title,
              href: provider.collections[index].href,
              index: index,
            ),
          );
        }
      },
    );
  }
}
