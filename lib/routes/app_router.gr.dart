// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:testproject/category_page/category_page.dart' as _i8;
import 'package:testproject/home_page/book_detail_page.dart' as _i2;
import 'package:testproject/home_page/books_page.dart' as _i3;
import 'package:testproject/home_page/home_content.dart' as _i7;
import 'package:testproject/home_page/home_page.dart' as _i1;
import 'package:testproject/home_page/listen_page.dart' as _i6;
import 'package:testproject/home_page/pdf_page.dart' as _i5;
import 'package:testproject/home_page/web_view_page.dart' as _i4;
import 'package:testproject/models/book.dart' as _i11;
import 'package:testproject/models/book_detail.dart' as _i13;
import 'package:testproject/models/collection.dart' as _i12;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    BookDetailRoute.name: (routeData) {
      final args = routeData.argsAs<BookDetailRouteArgs>();
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.BookDetailPage(
          key: args.key,
          book: args.book,
        ),
      );
    },
    BooksRoute.name: (routeData) {
      final args = routeData.argsAs<BooksRouteArgs>();
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.BooksPage(
          key: args.key,
          collection: args.collection,
        ),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.WebViewPage(
          key: args.key,
          title: args.title,
          url: args.url,
        ),
      );
    },
    PdfRoute.name: (routeData) {
      final args = routeData.argsAs<PdfRouteArgs>();
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.PdfPage(
          key: args.key,
          title: args.title,
          pdfUrl: args.pdfUrl,
        ),
      );
    },
    ListenRoute.name: (routeData) {
      final args = routeData.argsAs<ListenRouteArgs>();
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.ListenPage(
          key: args.key,
          bookDetail: args.bookDetail,
        ),
      );
    },
    HomeRouteContent.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomePageContent(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.CategoryPage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i9.RouteConfig(
              HomeRouteContent.name,
              path: 'home-page-content',
              parent: HomeRoute.name,
            ),
            _i9.RouteConfig(
              CategoryRoute.name,
              path: 'category-page',
              parent: HomeRoute.name,
            ),
          ],
        ),
        _i9.RouteConfig(
          BookDetailRoute.name,
          path: '/book-detail-page',
        ),
        _i9.RouteConfig(
          BooksRoute.name,
          path: '/books-page',
        ),
        _i9.RouteConfig(
          WebViewRoute.name,
          path: '/web-view-page',
        ),
        _i9.RouteConfig(
          PdfRoute.name,
          path: '/pdf-page',
        ),
        _i9.RouteConfig(
          ListenRoute.name,
          path: '/listen-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.BookDetailPage]
class BookDetailRoute extends _i9.PageRouteInfo<BookDetailRouteArgs> {
  BookDetailRoute({
    _i10.Key? key,
    required _i11.Book book,
  }) : super(
          BookDetailRoute.name,
          path: '/book-detail-page',
          args: BookDetailRouteArgs(
            key: key,
            book: book,
          ),
        );

  static const String name = 'BookDetailRoute';
}

class BookDetailRouteArgs {
  const BookDetailRouteArgs({
    this.key,
    required this.book,
  });

  final _i10.Key? key;

  final _i11.Book book;

  @override
  String toString() {
    return 'BookDetailRouteArgs{key: $key, book: $book}';
  }
}

/// generated route for
/// [_i3.BooksPage]
class BooksRoute extends _i9.PageRouteInfo<BooksRouteArgs> {
  BooksRoute({
    _i10.Key? key,
    required _i12.Collection collection,
  }) : super(
          BooksRoute.name,
          path: '/books-page',
          args: BooksRouteArgs(
            key: key,
            collection: collection,
          ),
        );

  static const String name = 'BooksRoute';
}

class BooksRouteArgs {
  const BooksRouteArgs({
    this.key,
    required this.collection,
  });

  final _i10.Key? key;

  final _i12.Collection collection;

  @override
  String toString() {
    return 'BooksRouteArgs{key: $key, collection: $collection}';
  }
}

/// generated route for
/// [_i4.WebViewPage]
class WebViewRoute extends _i9.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    _i10.Key? key,
    required String title,
    required String url,
  }) : super(
          WebViewRoute.name,
          path: '/web-view-page',
          args: WebViewRouteArgs(
            key: key,
            title: title,
            url: url,
          ),
        );

  static const String name = 'WebViewRoute';
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    this.key,
    required this.title,
    required this.url,
  });

  final _i10.Key? key;

  final String title;

  final String url;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, title: $title, url: $url}';
  }
}

/// generated route for
/// [_i5.PdfPage]
class PdfRoute extends _i9.PageRouteInfo<PdfRouteArgs> {
  PdfRoute({
    _i10.Key? key,
    required String title,
    required String pdfUrl,
  }) : super(
          PdfRoute.name,
          path: '/pdf-page',
          args: PdfRouteArgs(
            key: key,
            title: title,
            pdfUrl: pdfUrl,
          ),
        );

  static const String name = 'PdfRoute';
}

class PdfRouteArgs {
  const PdfRouteArgs({
    this.key,
    required this.title,
    required this.pdfUrl,
  });

  final _i10.Key? key;

  final String title;

  final String pdfUrl;

  @override
  String toString() {
    return 'PdfRouteArgs{key: $key, title: $title, pdfUrl: $pdfUrl}';
  }
}

/// generated route for
/// [_i6.ListenPage]
class ListenRoute extends _i9.PageRouteInfo<ListenRouteArgs> {
  ListenRoute({
    _i10.Key? key,
    required _i13.BookDetail bookDetail,
  }) : super(
          ListenRoute.name,
          path: '/listen-page',
          args: ListenRouteArgs(
            key: key,
            bookDetail: bookDetail,
          ),
        );

  static const String name = 'ListenRoute';
}

class ListenRouteArgs {
  const ListenRouteArgs({
    this.key,
    required this.bookDetail,
  });

  final _i10.Key? key;

  final _i13.BookDetail bookDetail;

  @override
  String toString() {
    return 'ListenRouteArgs{key: $key, bookDetail: $bookDetail}';
  }
}

/// generated route for
/// [_i7.HomePageContent]
class HomeRouteContent extends _i9.PageRouteInfo<void> {
  const HomeRouteContent()
      : super(
          HomeRouteContent.name,
          path: 'home-page-content',
        );

  static const String name = 'HomeRouteContent';
}

/// generated route for
/// [_i8.CategoryPage]
class CategoryRoute extends _i9.PageRouteInfo<void> {
  const CategoryRoute()
      : super(
          CategoryRoute.name,
          path: 'category-page',
        );

  static const String name = 'CategoryRoute';
}
