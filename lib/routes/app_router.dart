import 'package:auto_route/auto_route.dart';
import 'package:testproject/pages/category/category_page.dart';
import 'package:testproject/pages/book_detail/book_detail_page.dart';
import 'package:testproject/pages/books/books_page.dart';
import 'package:testproject/pages/collections/collections_page.dart';
import 'package:testproject/pages/home_page_view/home_page_view.dart';
import 'package:testproject/pages/listen/listen_page.dart';
import 'package:testproject/pages/login/login_page.dart';
import 'package:testproject/pages/pdf_view/pdf_page.dart';
import 'package:testproject/pages/web_view/web_view_page.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: LoginPage,
      initial: true,
    ),
    AutoRoute(
      page: HomePageView,
      children: [
        AutoRoute(page: CollectionsPage),
        AutoRoute(page: CategoryPage),
      ],
    ),
    AutoRoute(page: BookDetailPage),
    AutoRoute(page: BooksPage),
    AutoRoute(page: WebViewPage),
    AutoRoute(page: PdfPage),
    AutoRoute(page: ListenPage),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
