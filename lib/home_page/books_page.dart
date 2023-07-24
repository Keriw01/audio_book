import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/home_page/favorite_section.dart';
import 'package:testproject/home_page/featured_section.dart';
import 'package:testproject/providers/books_provider.dart';
import 'package:testproject/models/collection.dart';

class BooksPage extends StatelessWidget {
  final Collection collection;
  const BooksPage({super.key, required this.collection});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BooksProvider(collection.href),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(title: Text(collection.title)),
          body: Consumer<BooksProvider>(
            builder: (_, provider, __) {
              if (provider.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (provider.errorMessage.isNotEmpty) {
                return Center(
                  child: Column(
                    children: [
                      const Text('Wystąpił błąd'),
                      Text(provider.errorMessage),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () =>
                            provider.refreshBookCollection(collection.href),
                        child: const Text('Odśwież dane'),
                      )
                    ],
                  ),
                );
              }
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FavoriteSection(books: provider.books),
                    FeaturedSection(books: provider.books),
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
