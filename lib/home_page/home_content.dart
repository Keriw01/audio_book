import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/collections_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/home_page/collection_item.dart';
import 'package:testproject/widgets/custom_divider.dart';
import 'package:testproject/widgets/loading_indicator.dart';

@AutoRoute()
class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CollectionsCubit, CollectionsState>(
      builder: (context, state) {
        if (state is CollectionsLoading) {
          return const LoadingIndicator();
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
      listener: _listener,
    );
  }
}
