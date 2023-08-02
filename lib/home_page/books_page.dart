import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/books_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/home_page/favorite_section.dart';
import 'package:testproject/home_page/featured_section.dart';
import 'package:testproject/models/collection.dart';
import 'package:testproject/widgets/loading_indicator.dart';

class BooksPage extends StatelessWidget {
  final Collection collection;

  const BooksPage({
    super.key,
    required this.collection,
  });

  void _onStateError(BuildContext context, BooksState state) {
    if (state is BooksError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).errorFetchBooks),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BooksCubit(collection.href),
      child: Scaffold(
        appBar: AppBar(
          title: Text(collection.title),
        ),
        body: BlocConsumer<BooksCubit, BooksState>(
          builder: (context, state) {
            if (state is BooksLoading) {
              return const LoadingIndicator();
            }

            if (state is BooksError) {
              return Center(
                child: ElevatedButton(
                  onPressed: () =>
                      context.read<BooksCubit>().fetchBooks(collection.href),
                  child: Text(S.of(context).refreshData),
                ),
              );
            }

            if (state is BooksLoaded) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FavoriteSection(books: state.books),
                    FeaturedSection(books: state.books)
                  ],
                ),
              );
            }

            return const SizedBox.shrink();
          },
          listener: _onStateError,
        ),
      ),
    );
  }
}
