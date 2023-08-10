import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:testproject/category_page/category_page.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/home_page/book_detail_page.dart';
import 'package:testproject/home_page/books_page.dart';
import 'package:testproject/home_page/home_content.dart';
import 'package:testproject/home_page/home_page.dart';
import 'package:testproject/home_page/pdf_page.dart';
import 'package:testproject/home_page/web_view_page.dart';
import 'package:testproject/models/book.dart';
import 'package:testproject/models/collection.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: HomeRouteContent.page,
              title: (context, data) => S.of(context).homePageTitle,
            ),
            AutoRoute(
              page: CategoryRoute.page,
              title: (context, data) => S.of(context).categoryPageTitle,
            ),
          ],
        ),
        AutoRoute(page: BookDetailRoute.page),
        AutoRoute(page: BooksRoute.page),
        AutoRoute(page: WebViewRoute.page),
        AutoRoute(page: PdfRoute.page),
      ];
}
