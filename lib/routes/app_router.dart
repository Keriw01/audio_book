import 'package:auto_route/auto_route.dart';
import 'package:testproject/category_page/category_page.dart';
import 'package:testproject/home_page/book_detail_page.dart';
import 'package:testproject/home_page/books_page.dart';
import 'package:testproject/home_page/home_content.dart';
import 'package:testproject/home_page/home_page.dart';
import 'package:testproject/home_page/pdf_page.dart';
import 'package:testproject/home_page/web_view_page.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      initial: true,
      children: [
        AutoRoute(page: HomePageContent),
        AutoRoute(page: CategoryPage),
      ],
    ),
    AutoRoute(page: BookDetailPage),
    AutoRoute(page: BooksPage),
    AutoRoute(page: WebViewPage),
    AutoRoute(page: PdfPage),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
