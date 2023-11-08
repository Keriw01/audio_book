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
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:testproject/models/book.dart' as _i13;
import 'package:testproject/models/book_detail.dart' as _i15;
import 'package:testproject/models/collection.dart' as _i14;
import 'package:testproject/pages/book_detail/book_detail_page.dart' as _i4;
import 'package:testproject/pages/books/books_page.dart' as _i5;
import 'package:testproject/pages/category/category_page.dart' as _i10;
import 'package:testproject/pages/collections/collections_page.dart' as _i9;
import 'package:testproject/pages/home_page_view/home_page_view.dart' as _i3;
import 'package:testproject/pages/listen/listen_page.dart' as _i8;
import 'package:testproject/pages/login/login_page.dart' as _i1;
import 'package:testproject/pages/pdf_view/pdf_page.dart' as _i7;
import 'package:testproject/pages/registration/register_page.dart' as _i2;
import 'package:testproject/pages/web_view/web_view_page.dart' as _i6;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i1.LoginPage(key: args.key),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.RegistrationPage(),
      );
    },
    HomeRouteView.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePageView(),
      );
    },
    BookDetailRoute.name: (routeData) {
      final args = routeData.argsAs<BookDetailRouteArgs>();
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.BookDetailPage(
          key: args.key,
          book: args.book,
        ),
      );
    },
    BooksRoute.name: (routeData) {
      final args = routeData.argsAs<BooksRouteArgs>();
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.BooksPage(
          key: args.key,
          collection: args.collection,
        ),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.WebViewPage(
          key: args.key,
          title: args.title,
          url: args.url,
        ),
      );
    },
    PdfRoute.name: (routeData) {
      final args = routeData.argsAs<PdfRouteArgs>();
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i7.PdfPage(
          key: args.key,
          title: args.title,
          pdfUrl: args.pdfUrl,
        ),
      );
    },
    ListenRoute.name: (routeData) {
      final args = routeData.argsAs<ListenRouteArgs>();
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.ListenPage(
          key: args.key,
          bookDetail: args.bookDetail,
        ),
      );
    },
    CollectionsRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.CollectionsPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i11.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.CategoryPage(),
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          LoginRoute.name,
          path: '/',
        ),
        _i11.RouteConfig(
          RegistrationRoute.name,
          path: '/registration-page',
        ),
        _i11.RouteConfig(
          HomeRouteView.name,
          path: '/home-page-view',
          children: [
            _i11.RouteConfig(
              CollectionsRoute.name,
              path: 'collections-page',
              parent: HomeRouteView.name,
            ),
            _i11.RouteConfig(
              CategoryRoute.name,
              path: 'category-page',
              parent: HomeRouteView.name,
            ),
          ],
        ),
        _i11.RouteConfig(
          BookDetailRoute.name,
          path: '/book-detail-page',
        ),
        _i11.RouteConfig(
          BooksRoute.name,
          path: '/books-page',
        ),
        _i11.RouteConfig(
          WebViewRoute.name,
          path: '/web-view-page',
        ),
        _i11.RouteConfig(
          PdfRoute.name,
          path: '/pdf-page',
        ),
        _i11.RouteConfig(
          ListenRoute.name,
          path: '/listen-page',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i11.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i12.Key? key})
      : super(
          LoginRoute.name,
          path: '/',
          args: LoginRouteArgs(key: key),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.RegistrationPage]
class RegistrationRoute extends _i11.PageRouteInfo<void> {
  const RegistrationRoute()
      : super(
          RegistrationRoute.name,
          path: '/registration-page',
        );

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [_i3.HomePageView]
class HomeRouteView extends _i11.PageRouteInfo<void> {
  const HomeRouteView({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRouteView.name,
          path: '/home-page-view',
          initialChildren: children,
        );

  static const String name = 'HomeRouteView';
}

/// generated route for
/// [_i4.BookDetailPage]
class BookDetailRoute extends _i11.PageRouteInfo<BookDetailRouteArgs> {
  BookDetailRoute({
    _i12.Key? key,
    required _i13.Book book,
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

  final _i12.Key? key;

  final _i13.Book book;

  @override
  String toString() {
    return 'BookDetailRouteArgs{key: $key, book: $book}';
  }
}

/// generated route for
/// [_i5.BooksPage]
class BooksRoute extends _i11.PageRouteInfo<BooksRouteArgs> {
  BooksRoute({
    _i12.Key? key,
    required _i14.Collection collection,
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

  final _i12.Key? key;

  final _i14.Collection collection;

  @override
  String toString() {
    return 'BooksRouteArgs{key: $key, collection: $collection}';
  }
}

/// generated route for
/// [_i6.WebViewPage]
class WebViewRoute extends _i11.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    _i12.Key? key,
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

  final _i12.Key? key;

  final String title;

  final String url;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, title: $title, url: $url}';
  }
}

/// generated route for
/// [_i7.PdfPage]
class PdfRoute extends _i11.PageRouteInfo<PdfRouteArgs> {
  PdfRoute({
    _i12.Key? key,
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

  final _i12.Key? key;

  final String title;

  final String pdfUrl;

  @override
  String toString() {
    return 'PdfRouteArgs{key: $key, title: $title, pdfUrl: $pdfUrl}';
  }
}

/// generated route for
/// [_i8.ListenPage]
class ListenRoute extends _i11.PageRouteInfo<ListenRouteArgs> {
  ListenRoute({
    _i12.Key? key,
    required _i15.BookDetail bookDetail,
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

  final _i12.Key? key;

  final _i15.BookDetail bookDetail;

  @override
  String toString() {
    return 'ListenRouteArgs{key: $key, bookDetail: $bookDetail}';
  }
}

/// generated route for
/// [_i9.CollectionsPage]
class CollectionsRoute extends _i11.PageRouteInfo<void> {
  const CollectionsRoute()
      : super(
          CollectionsRoute.name,
          path: 'collections-page',
        );

  static const String name = 'CollectionsRoute';
}

/// generated route for
/// [_i10.CategoryPage]
class CategoryRoute extends _i11.PageRouteInfo<void> {
  const CategoryRoute()
      : super(
          CategoryRoute.name,
          path: 'category-page',
        );

  static const String name = 'CategoryRoute';
}
