import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/favorites_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/home_page/favorite_section.dart';
import 'package:testproject/home_page/featured_section.dart';
import 'package:testproject/models/book.dart';

class BooksLoadedWidget extends StatelessWidget {
  final List<Book> books;
  const BooksLoadedWidget({super.key, required this.books});

  void _onStateError(BuildContext context, FavoritesState state) {
    if (state is FavoritesError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).errorOccured + state.message),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        if (state is FavoritesLoaded) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FavoriteSection(books: books),
                FeaturedSection(books: books)
              ],
            ),
          );
        }

        return const SizedBox.shrink();
      },
      listener: _onStateError,
    );
  }
}
