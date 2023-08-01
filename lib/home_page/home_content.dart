import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/collections_cubit.dart';
import 'package:testproject/home_page/collection_item.dart';
import 'package:testproject/widgets/custom_divider.dart';
import 'package:testproject/widgets/loading_indicator.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollectionsCubit, CollectionsState>(
      builder: (context, state) {
        if (state is CollectionsLoading) {
          return const LoadingIndicator();
        }

        if (state is CollectionsError) {
          WidgetsBinding.instance.addPostFrameCallback(
            (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Błąd podczas pobierania danych o kolekcjach!'),
                ),
              );
            },
          );
          return Center(
            child: ElevatedButton(
              onPressed: () =>
                  context.read<CollectionsCubit>().refreshCollection(),
              child: const Text('Odśwież'),
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
    );
  }
}
