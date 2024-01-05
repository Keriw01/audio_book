import 'package:auto_route/auto_route.dart';
import 'package:testproject/pages/category/category_page.dart';
import 'package:testproject/pages/book_detail/book_detail_page.dart';
import 'package:testproject/pages/books/books_page.dart';
import 'package:testproject/pages/collections/collections_page.dart';
import 'package:testproject/pages/home_page_view/home_page_view.dart';
import 'package:testproject/pages/listen/listen_page.dart';
import 'package:testproject/pages/login/login_page.dart';
import 'package:testproject/pages/pdf_view/pdf_page.dart';
import 'package:testproject/pages/profile/profile_page.dart';
import 'package:testproject/pages/registration/register_page.dart';
import 'package:testproject/pages/web_view/web_view_page.dart';

/// [AppRouter] defines the application's navigation routes using the `auto_route` package.
/// It includes routes for various pages such as login, registration, home, collections, categories,
/// book details, books, web view, PDF view, listen, and profile.
@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: LoginPage,
      initial: true,
    ),
    AutoRoute(page: RegistrationPage),
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
    AutoRoute(page: ProfilePage),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
