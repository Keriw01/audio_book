import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/providers/collections_provider.dart';
import 'package:testproject/home_page/collection_item.dart';
import 'package:testproject/widgets/custom_divider.dart';
import 'package:testproject/widgets/error_handling_widget.dart';
import 'package:testproject/widgets/loading_indicator.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CollectionsProvider>(
      builder: (_, provider, __) {
        if (provider.isLoading) {
          return const LoadingIndicator();
        }
        if (provider.errorMessage.isNotEmpty) {
          return ErrorHandlingWidget(
            textError: provider.errorMessage,
            onRefresh: provider.refreshCollection(),
          );
        }
        return ListView.separated(
          itemCount: provider.collections.length,
          separatorBuilder: (context, index) => const CustomDivider(),
          itemBuilder: (_, index) => CollectionItem(
            collection: provider.collections[index],
          ),
        );
      },
    );
  }
}
