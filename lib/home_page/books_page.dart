import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    return ChangeNotifierProvider(
      create: (_) => BooksProvider(collection.href),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(title: Text(collection.title)),
          body: Consumer<BooksProvider>(
            builder: (_, booksProvider, __) {
              if (booksProvider.isLoading) {
                return const LoadingIndicator();
              }
              if (booksProvider.errorMessage.isNotEmpty) {
                return ErrorHandlingWidget(
                  textError: booksProvider.errorMessage,
                  onRefresh:
                      booksProvider.refreshBookCollection(collection.href),
                );
              }
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FavoriteSection(books: booksProvider.books),
                    FeaturedSection(books: booksProvider.books)
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
