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
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:testproject/models/book.dart' as _i12;
import 'package:testproject/models/book_detail.dart' as _i14;
import 'package:testproject/models/collection.dart' as _i13;
import 'package:testproject/pages/book_detail/book_detail_page.dart' as _i3;
import 'package:testproject/pages/books/books_page.dart' as _i4;
import 'package:testproject/pages/category/category_page.dart' as _i9;
import 'package:testproject/pages/collections/collections_page.dart' as _i8;
import 'package:testproject/pages/home_page_view/home_page_view.dart' as _i2;
import 'package:testproject/pages/listen/listen_page.dart' as _i7;
import 'package:testproject/pages/login/login_page.dart' as _i1;
import 'package:testproject/pages/pdf_view/pdf_page.dart' as _i6;
import 'package:testproject/pages/web_view/web_view_page.dart' as _i5;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    HomeRouteView.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePageView(),
      );
    },
    BookDetailRoute.name: (routeData) {
      final args = routeData.argsAs<BookDetailRouteArgs>();
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.BookDetailPage(
          key: args.key,
          book: args.book,
        ),
      );
    },
    BooksRoute.name: (routeData) {
      final args = routeData.argsAs<BooksRouteArgs>();
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.BooksPage(
          key: args.key,
          collection: args.collection,
        ),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.WebViewPage(
          key: args.key,
          title: args.title,
          url: args.url,
        ),
      );
    },
    PdfRoute.name: (routeData) {
      final args = routeData.argsAs<PdfRouteArgs>();
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.PdfPage(
          key: args.key,
          title: args.title,
          pdfUrl: args.pdfUrl,
        ),
      );
    },
    ListenRoute.name: (routeData) {
      final args = routeData.argsAs<ListenRouteArgs>();
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i7.ListenPage(
          key: args.key,
          bookDetail: args.bookDetail,
        ),
      );
    },
    CollectionsRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.CollectionsPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.CategoryPage(),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          LoginRoute.name,
          path: '/',
        ),
        _i10.RouteConfig(
          HomeRouteView.name,
          path: '/home-page-view',
          children: [
            _i10.RouteConfig(
              CollectionsRoute.name,
              path: 'collections-page',
              parent: HomeRouteView.name,
            ),
            _i10.RouteConfig(
              CategoryRoute.name,
              path: 'category-page',
              parent: HomeRouteView.name,
            ),
          ],
        ),
        _i10.RouteConfig(
          BookDetailRoute.name,
          path: '/book-detail-page',
        ),
        _i10.RouteConfig(
          BooksRoute.name,
          path: '/books-page',
        ),
        _i10.RouteConfig(
          WebViewRoute.name,
          path: '/web-view-page',
        ),
        _i10.RouteConfig(
          PdfRoute.name,
          path: '/pdf-page',
        ),
        _i10.RouteConfig(
          ListenRoute.name,
          path: '/listen-page',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.HomePageView]
class HomeRouteView extends _i10.PageRouteInfo<void> {
  const HomeRouteView({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRouteView.name,
          path: '/home-page-view',
          initialChildren: children,
        );

  static const String name = 'HomeRouteView';
}

/// generated route for
/// [_i3.BookDetailPage]
class BookDetailRoute extends _i10.PageRouteInfo<BookDetailRouteArgs> {
  BookDetailRoute({
    _i11.Key? key,
    required _i12.Book book,
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

  final _i11.Key? key;

  final _i12.Book book;

  @override
  String toString() {
    return 'BookDetailRouteArgs{key: $key, book: $book}';
  }
}

/// generated route for
/// [_i4.BooksPage]
class BooksRoute extends _i10.PageRouteInfo<BooksRouteArgs> {
  BooksRoute({
    _i11.Key? key,
    required _i13.Collection collection,
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

  final _i11.Key? key;

  final _i13.Collection collection;

  @override
  String toString() {
    return 'BooksRouteArgs{key: $key, collection: $collection}';
  }
}

/// generated route for
/// [_i5.WebViewPage]
class WebViewRoute extends _i10.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    _i11.Key? key,
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

  final _i11.Key? key;

  final String title;

  final String url;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, title: $title, url: $url}';
  }
}

/// generated route for
/// [_i6.PdfPage]
class PdfRoute extends _i10.PageRouteInfo<PdfRouteArgs> {
  PdfRoute({
    _i11.Key? key,
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

  final _i11.Key? key;

  final String title;

  final String pdfUrl;

  @override
  String toString() {
    return 'PdfRouteArgs{key: $key, title: $title, pdfUrl: $pdfUrl}';
  }
}

/// generated route for
/// [_i7.ListenPage]
class ListenRoute extends _i10.PageRouteInfo<ListenRouteArgs> {
  ListenRoute({
    _i11.Key? key,
    required _i14.BookDetail bookDetail,
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

  final _i11.Key? key;

  final _i14.BookDetail bookDetail;

  @override
  String toString() {
    return 'ListenRouteArgs{key: $key, bookDetail: $bookDetail}';
  }
}

/// generated route for
/// [_i8.CollectionsPage]
class CollectionsRoute extends _i10.PageRouteInfo<void> {
  const CollectionsRoute()
      : super(
          CollectionsRoute.name,
          path: 'collections-page',
        );

  static const String name = 'CollectionsRoute';
}

/// generated route for
/// [_i9.CategoryPage]
class CategoryRoute extends _i10.PageRouteInfo<void> {
  const CategoryRoute()
      : super(
          CategoryRoute.name,
          path: 'category-page',
        );

  static const String name = 'CategoryRoute';
}
