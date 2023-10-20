import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/pages/books/cubit/books_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/pages/books/widgets/books_section.dart';
import 'package:testproject/models/collection.dart';
import 'package:testproject/widgets/loading_indicator.dart';

@AutoRoute()
class BooksPage extends StatelessWidget {
  final Collection collection;

  const BooksPage({super.key, required this.collection});

  void _listener(BuildContext context, BooksState state) {
    if (state is BooksError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).errorFetchBooks),
          actionOverflowThreshold: 1,
          action: SnackBarAction(
            label: S.of(context).refreshData,
            onPressed: () =>
                context.read<BooksCubit>().fetchBooks(collection.href),
          ),
          duration: const Duration(seconds: 30),
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

            if (state is BooksLoaded) {
              return BooksSection(books: state.books);
            }

            return const SizedBox.shrink();
          },
          listener: _listener,
        ),
      ),
    );
  }
}
