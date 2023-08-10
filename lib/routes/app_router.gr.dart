// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BookDetailRoute.name: (routeData) {
      final args = routeData.argsAs<BookDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BookDetailPage(
          key: args.key,
          book: args.book,
        ),
      );
    },
    BooksRoute.name: (routeData) {
      final args = routeData.argsAs<BooksRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BooksPage(
          key: args.key,
          collection: args.collection,
        ),
      );
    },
    CategoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoryPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    HomeRouteContent.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePageContent(),
      );
    },
    PdfRoute.name: (routeData) {
      final args = routeData.argsAs<PdfRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PdfPage(
          key: args.key,
          title: args.title,
          pdfUrl: args.pdfUrl,
        ),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WebViewPage(
          key: args.key,
          title: args.title,
          url: args.url,
        ),
      );
    },
  };
}

/// generated route for
/// [BookDetailPage]
class BookDetailRoute extends PageRouteInfo<BookDetailRouteArgs> {
  BookDetailRoute({
    Key? key,
    required Book book,
    List<PageRouteInfo>? children,
  }) : super(
          BookDetailRoute.name,
          args: BookDetailRouteArgs(
            key: key,
            book: book,
          ),
          initialChildren: children,
        );

  static const String name = 'BookDetailRoute';

  static const PageInfo<BookDetailRouteArgs> page =
      PageInfo<BookDetailRouteArgs>(name);
}

class BookDetailRouteArgs {
  const BookDetailRouteArgs({
    this.key,
    required this.book,
  });

  final Key? key;

  final Book book;

  @override
  String toString() {
    return 'BookDetailRouteArgs{key: $key, book: $book}';
  }
}

/// generated route for
/// [BooksPage]
class BooksRoute extends PageRouteInfo<BooksRouteArgs> {
  BooksRoute({
    Key? key,
    required Collection collection,
    List<PageRouteInfo>? children,
  }) : super(
          BooksRoute.name,
          args: BooksRouteArgs(
            key: key,
            collection: collection,
          ),
          initialChildren: children,
        );

  static const String name = 'BooksRoute';

  static const PageInfo<BooksRouteArgs> page = PageInfo<BooksRouteArgs>(name);
}

class BooksRouteArgs {
  const BooksRouteArgs({
    this.key,
    required this.collection,
  });

  final Key? key;

  final Collection collection;

  @override
  String toString() {
    return 'BooksRouteArgs{key: $key, collection: $collection}';
  }
}

/// generated route for
/// [CategoryPage]
class CategoryRoute extends PageRouteInfo<void> {
  const CategoryRoute({List<PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePageContent]
class HomeRouteContent extends PageRouteInfo<void> {
  const HomeRouteContent({List<PageRouteInfo>? children})
      : super(
          HomeRouteContent.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteContent';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PdfPage]
class PdfRoute extends PageRouteInfo<PdfRouteArgs> {
  PdfRoute({
    Key? key,
    required String title,
    required String pdfUrl,
    List<PageRouteInfo>? children,
  }) : super(
          PdfRoute.name,
          args: PdfRouteArgs(
            key: key,
            title: title,
            pdfUrl: pdfUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'PdfRoute';

  static const PageInfo<PdfRouteArgs> page = PageInfo<PdfRouteArgs>(name);
}

class PdfRouteArgs {
  const PdfRouteArgs({
    this.key,
    required this.title,
    required this.pdfUrl,
  });

  final Key? key;

  final String title;

  final String pdfUrl;

  @override
  String toString() {
    return 'PdfRouteArgs{key: $key, title: $title, pdfUrl: $pdfUrl}';
  }
}

/// generated route for
/// [WebViewPage]
class WebViewRoute extends PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    Key? key,
    required String title,
    required String url,
    List<PageRouteInfo>? children,
  }) : super(
          WebViewRoute.name,
          args: WebViewRouteArgs(
            key: key,
            title: title,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static const PageInfo<WebViewRouteArgs> page =
      PageInfo<WebViewRouteArgs>(name);
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    this.key,
    required this.title,
    required this.url,
  });

  final Key? key;

  final String title;

  final String url;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, title: $title, url: $url}';
  }
}
