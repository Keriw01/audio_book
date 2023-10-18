import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/cubit/book_detail_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/home_page/fragment_section.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/routes/app_router.gr.dart';
import 'package:testproject/widgets/authors_list.dart';
import 'package:testproject/widgets/genres_list.dart';
import 'package:testproject/widgets/liked_button.dart';
import 'package:testproject/widgets/listen_button.dart';
import 'package:testproject/widgets/loading_indicator.dart';
import 'package:testproject/widgets/read_button.dart';

@AutoRoute()
class BookDetailPage extends StatelessWidget {
  final Book book;
  const BookDetailPage({super.key, required this.book});

  void _listener(BuildContext context, BookDetailState state) {
    if (state is BookDetailError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).errorOccured + state.message),
          actionOverflowThreshold: 1,
          action: SnackBarAction(
            label: S.of(context).refreshData,
            onPressed: () =>
                context.read<BookDetailCubit>().fetchBookDetail(book.href),
          ),
          duration: const Duration(seconds: 30),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookDetailCubit(book.href),
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
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: book.simpleThumb,
                                  placeholder: (context, url) =>
                                      const LoadingIndicator(),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                  alignment: Alignment.centerLeft,
                                  width: 150,
                                ),
                                if (book.hasAudio)
                                  ListenButton(
                                    text: S.of(context).listen.toString(),
                                    navigate: () => context.router.push(
                                      ListenRoute(bookDetail: state.bookDetail),
                                    ),
                                  )
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              book.title,
                              style: Theme.of(context).textTheme.titleMedium,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 5),
                            AuthorsList(authors: state.bookDetail.authors),
                            const SizedBox(height: 2.5),
                            GenresList(genres: state.bookDetail.genres),
                          ],
                        ),
                      ),
                      if (state.bookDetail.fragmentData?.html != null)
                        FragmentSection(
                          htmlFragment: state.bookDetail.fragmentData!.html,
                        ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 20,
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            if (state.bookDetail.html.isNotEmpty)
                              ReadButton(
                                text: S.of(context).readHtml,
                                navigate: () => context.router.push(
                                  WebViewRoute(
                                    title: book.title,
                                    url: state.bookDetail.html,
                                  ),
                                ),
                              ),
                            if (state.bookDetail.pdf.isNotEmpty)
                              ReadButton(
                                text: S.of(context).readPdf,
                                navigate: () => context.router.push(
                                  PdfRoute(
                                    title: book.title,
                                    pdfUrl: state.bookDetail.pdf,
                                  ),
                                ),
                              ),
                            LikedButton(book: book),
                          ],
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
