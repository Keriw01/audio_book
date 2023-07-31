import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:testproject/cubit/books_cubit.dart';
import 'package:testproject/cubit/favorites_cubit.dart';
import 'package:testproject/home_page/favorite_section.dart';
import 'package:testproject/home_page/featured_section.dart';
import 'package:testproject/providers/books_provider.dart';
import 'package:testproject/models/collection.dart';
import 'package:testproject/widgets/error_handling_widget.dart';
import 'package:testproject/widgets/loading_indicator.dart';

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
        appBar: AppBar(title: Text(collection.title)),
        body: BlocBuilder<BooksCubit, BooksState>(
          builder: (context, state) {
            if (state is BooksLoading) {
              return const LoadingIndicator();
            }
            if (state is BooksError) {
              return Text('Blad ${state.message}');
            }
            if (state is BooksLoaded) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //FavoriteSection(books: state.books),
                    FeaturedSection(books: state.books)
                  ],
                ),
              );
            }
            return const Text('No data avaliable.');
          },
        ),
      ),
    );
  }
}
