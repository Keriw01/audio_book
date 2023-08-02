import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/book_detail_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/styles/colors.dart';
import 'package:testproject/widgets/loading_indicator.dart';

class BookDetailPage extends StatelessWidget {
  final String href;
  final Book book;
  const BookDetailPage({super.key, required this.href, required this.book});
  void _listener(BuildContext context, BookDetailState state) {
    if (state is BookDetailError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).errorOccured + state.message),
          actionOverflowThreshold: 1,
          action: SnackBarAction(
            label: S.of(context).refreshData,
            onPressed: () =>
                context.read<BookDetailCubit>().fetchBookDetail(href),
          ),
          duration: const Duration(
            seconds: 30,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookDetailCubit(href),
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).bookDetail),
        ),
        body: BlocConsumer<BookDetailCubit, BookDetailState>(
          listener: _listener,
          builder: (context, state) {
            if (state is BookDetailLoading) {
              return const LoadingIndicator();
            }
            if (state is BookDetailError) {
              return Text(state.message);
            }
            if (state is BookDetailLoaded) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            const SizedBox(height: 15),
                            CachedNetworkImage(
                              imageUrl: book.simpleThumb,
                              placeholder: (context, url) =>
                                  const LoadingIndicator(),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              alignment: Alignment.centerLeft,
                              width: 150,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              book.title,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              book.author,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(height: 2.5),
                            Text(
                              state.bookDetail.genres[0].name.toString(),
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 5,
                            height: 25,
                            color: seedColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            S.of(context).fragment,
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        state.bookDetail.fragmentData.html,
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.thumb_up),
                          label: const Text('0'),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
