import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/home_page/favorite_item.dart';
import 'package:testproject/home_page/featured_item.dart';
import 'package:testproject/providers/books_provider.dart';
import 'package:testproject/styles/colors.dart';

class BooksPage extends StatelessWidget {
  final String title;
  final String href;
  const BooksPage({super.key, required this.title, required this.href});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BooksProvider(href),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(title: const Text('Książki')),
          body: Consumer<BooksProvider>(
            builder: (_, provider, __) {
              if (provider.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (provider.errorMessage.isNotEmpty) {
                return Center(
                  child: Column(children: [
                    const Text('Wystąpił błąd:'),
                    Text(provider.errorMessage),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        provider.refreshBookCollection(href);
                      },
                      child: const Text('Odśwież dane'),
                    )
                  ]),
                );
              }
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 20,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Dla ciebie',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 320,
                          child: ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (_, index) => FavoriteItem(
                              provider: provider,
                              index: index,
                            ),
                          ),
                        ),
                        Text(
                          'Wybrane',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const SizedBox(height: 15),
                        ListView.separated(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: provider.books.length,
                          padding: const EdgeInsets.only(right: 15),
                          separatorBuilder: (context, index) {
                            return const Divider(
                              height: 1,
                              thickness: 1,
                              color: dividerColor,
                            );
                          },
                          itemBuilder: (_, index) => FeaturedItem(
                            provider: provider,
                            index: index,
                          ),
                        ),
                      ]),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
