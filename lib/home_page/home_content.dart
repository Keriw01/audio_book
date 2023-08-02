import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/collections_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/home_page/collection_item.dart';
import 'package:testproject/widgets/custom_divider.dart';
import 'package:testproject/widgets/loading_indicator.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CollectionsCubit, CollectionsState>(
      builder: (context, state) {
        if (state is CollectionsLoading) {
          return const LoadingIndicator();
        }

        if (state is CollectionsError) {
          return Center(
            child: ElevatedButton(
              onPressed: () =>
                  context.read<CollectionsCubit>().fetchCollections(),
              child: Text(S.of(context).refreshData),
            ),
          );
        }

        if (state is CollectionsLoaded) {
          return ListView.separated(
            itemCount: state.collections.length,
            separatorBuilder: (context, index) => const CustomDivider(),
            itemBuilder: (_, index) => CollectionItem(
              collection: state.collections[index],
            ),
          );
        }

        return const SizedBox.shrink();
      },
      listener: (context, state) {
        if (state is CollectionsError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(S.of(context).errorFetchCollection),
            ),
          );
        }
      },
    );
  }
}
