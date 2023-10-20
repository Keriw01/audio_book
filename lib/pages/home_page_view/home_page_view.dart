import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:testproject/routes/app_router.gr.dart';

@AutoRoute()
class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
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
