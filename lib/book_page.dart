import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:testproject/provider/books_provider.dart';

class BookPage extends StatelessWidget {
  final String title;
  final String href;
  const BookPage({super.key, required this.title, required this.href});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BooksProvider(href),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Książki'),
          ),
          body: Consumer<BooksProvider>(
            builder: (_, provider, __) {
              if (provider.isLoading) {
                return const Center();
              } else if (provider.errorMessage.isNotEmpty) {
                return Center(
                  child: Column(
                    children: [
                      const Text('An error occured:'),
                      Text(provider.errorMessage),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          provider.refreshBookCollection(href);
                        },
                        child: const Text('Refresh data'),
                      )
                    ],
                  ),
                );
              } else {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dla ciebie",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 400,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (_, index) => Padding(
                            padding: const EdgeInsets.only(
                              right: 10.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: provider.books[index].simpleThumb,
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                  width: 200,
                                  alignment: Alignment.centerLeft,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  provider.books[index].title,
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  provider.books[index].author,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Text("Wybrane",
                          style: Theme.of(context).textTheme.headlineSmall),
                      const SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: provider.books.length,
                          itemBuilder: (_, index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CachedNetworkImage(
                                    imageUrl: provider.books[index].simpleThumb,
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                    width: 100,
                                    alignment: Alignment.centerLeft,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                150,
                                        child: Text(
                                          provider.books[index].title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall,
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                150,
                                        child: Text(
                                          provider.books[index].author,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                height: 1,
                                thickness: 1,
                                color: Color.fromARGB(255, 220, 220, 220),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
  }
}
