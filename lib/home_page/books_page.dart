import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/books_cubit.dart';
import 'package:testproject/home_page/favorite_section.dart';
import 'package:testproject/home_page/featured_section.dart';
import 'package:testproject/models/collection.dart';
import 'package:testproject/widgets/error_snackbar.dart';
import 'package:testproject/widgets/loading_indicator.dart';
import 'package:testproject/widgets/refresh_button.dart';

class BooksPage extends StatelessWidget {
  final Collection collection;

  const BooksPage({
    super.key,
    required this.collection,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BooksCubit(collection.href),
      child: Scaffold(
        appBar: AppBar(
          title: Text(collection.title),
        ),
        body: BlocBuilder<BooksCubit, BooksState>(
          builder: (context, state) {
            if (state is BooksLoading) {
              return const LoadingIndicator();
            }

            if (state is BooksError) {
              return const ErrorSnackbar(
                textError: 'Błąd podczas pobierania danych o książkach!',
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

            return RefreshButton(
              refreshData: () =>
                  context.read<BooksCubit>().refreshBooks(collection.href),
            );
          },
        ),
      ),
    );
  }
}
