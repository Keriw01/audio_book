import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/styles/colors.dart';
import 'package:testproject/providers/collections_provider.dart';
import 'package:testproject/home_page/collection_item.dart';

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
        }
        if (provider.errorMessage.isNotEmpty) {
          return Center(
            child: Column(children: [
              const Text('Wystąpił błąd:'),
              Text(provider.errorMessage),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  provider.refreshCollection();
                },
                child: const Text('Odśwież dane'),
              ),
            ]),
          );
        }
        return ListView.separated(
          itemCount: provider.collections.length,
          separatorBuilder: (context, index) => const Divider(
            height: 1,
            thickness: 1,
            color: dividerColor,
          ),
          itemBuilder: (_, index) => CollectionItem(
            title: provider.collections[index].title,
            href: provider.collections[index].href,
            index: index,
          ),
        );
      },
    );
  }
}
