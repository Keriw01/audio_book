import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/pages/books/cubit/favorites_cubit.dart';
import 'package:testproject/routes/app_router.gr.dart';

@AutoRoute()
class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: zastanowić się nad wczytywaniem ulubionych po zalogowaniu, jednak FavoritesCubit powinien być zainicjonowany w main.dart, brak możliwości umieszczenia FavoritesCubit w MainAuth.
    context.read<FavoritesCubit>().loadFavorites();

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
