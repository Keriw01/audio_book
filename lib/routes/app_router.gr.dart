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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:testproject/category_page/category_page.dart' as _i7;
import 'package:testproject/home_page/book_detail_page.dart' as _i2;
import 'package:testproject/home_page/books_page.dart' as _i3;
import 'package:testproject/home_page/home_content.dart' as _i6;
import 'package:testproject/home_page/home_page.dart' as _i1;
import 'package:testproject/home_page/pdf_page.dart' as _i5;
import 'package:testproject/home_page/web_view_page.dart' as _i4;
import 'package:testproject/models/book.dart' as _i10;
import 'package:testproject/models/collection.dart' as _i11;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    BookDetailRoute.name: (routeData) {
      final args = routeData.argsAs<BookDetailRouteArgs>();
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.BookDetailPage(
          key: args.key,
          book: args.book,
        ),
      );
    },
    BooksRoute.name: (routeData) {
      final args = routeData.argsAs<BooksRouteArgs>();
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.BooksPage(
          key: args.key,
          collection: args.collection,
        ),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return _i8.AdaptivePage<dynamic>(
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
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.PdfPage(
          key: args.key,
          title: args.title,
          pdfUrl: args.pdfUrl,
        ),
      );
    },
    HomeRouteContent.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePageContent(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.CategoryPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i8.RouteConfig(
              HomeRouteContent.name,
              path: 'home-page-content',
              parent: HomeRoute.name,
            ),
            _i8.RouteConfig(
              CategoryRoute.name,
              path: 'category-page',
              parent: HomeRoute.name,
            ),
          ],
        ),
        _i8.RouteConfig(
          BookDetailRoute.name,
          path: '/book-detail-page',
        ),
        _i8.RouteConfig(
          BooksRoute.name,
          path: '/books-page',
        ),
        _i8.RouteConfig(
          WebViewRoute.name,
          path: '/web-view-page',
        ),
        _i8.RouteConfig(
          PdfRoute.name,
          path: '/pdf-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.BookDetailPage]
class BookDetailRoute extends _i8.PageRouteInfo<BookDetailRouteArgs> {
  BookDetailRoute({
    _i9.Key? key,
    required _i10.Book book,
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

  final _i9.Key? key;

  final _i10.Book book;

  @override
  String toString() {
    return 'BookDetailRouteArgs{key: $key, book: $book}';
  }
}

/// generated route for
/// [_i3.BooksPage]
class BooksRoute extends _i8.PageRouteInfo<BooksRouteArgs> {
  BooksRoute({
    _i9.Key? key,
    required _i11.Collection collection,
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

  final _i9.Key? key;

  final _i11.Collection collection;

  @override
  String toString() {
    return 'BooksRouteArgs{key: $key, collection: $collection}';
  }
}

/// generated route for
/// [_i4.WebViewPage]
class WebViewRoute extends _i8.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    _i9.Key? key,
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

  final _i9.Key? key;

  final String title;

  final String url;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, title: $title, url: $url}';
  }
}

/// generated route for
/// [_i5.PdfPage]
class PdfRoute extends _i8.PageRouteInfo<PdfRouteArgs> {
  PdfRoute({
    _i9.Key? key,
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

  final _i9.Key? key;

  final String title;

  final String pdfUrl;

  @override
  String toString() {
    return 'PdfRouteArgs{key: $key, title: $title, pdfUrl: $pdfUrl}';
  }
}

/// generated route for
/// [_i6.HomePageContent]
class HomeRouteContent extends _i8.PageRouteInfo<void> {
  const HomeRouteContent()
      : super(
          HomeRouteContent.name,
          path: 'home-page-content',
        );

  static const String name = 'HomeRouteContent';
}

/// generated route for
/// [_i7.CategoryPage]
class CategoryRoute extends _i8.PageRouteInfo<void> {
  const CategoryRoute()
      : super(
          CategoryRoute.name,
          path: 'category-page',
        );

  static const String name = 'CategoryRoute';
}
