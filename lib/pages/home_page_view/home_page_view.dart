import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/pages/books/cubit/favorites_cubit.dart';
import 'package:testproject/routes/app_router.gr.dart';

/// Home Page View is responsible for displaying the main content of the application.
/// It utilizes AutoRoute for navigation and contains logic for initializing the FavoritesCubit.
@AutoRoute()
class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Consider loading favorites upon login. However, FavoritesCubit should be initialized in main.dart,
    // and it's not possible to place FavoritesCubit in MainAuth. Need further consideration.
    context.read<FavoritesCubit>().loadFavorites();

    // AutoTabsRouter.pageView is used to create a page view with tabs for Collections and Categories.
    return AutoTabsRouter.pageView(
      routes: const [
        CollectionsRoute(),
        CategoryRoute(),
      ],
      builder: (context, child, _) {
        return child;
      },
      scrollDirection: Axis.horizontal,
    );
  }
}
