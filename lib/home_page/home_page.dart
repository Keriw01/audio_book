import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:testproject/routes/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        HomeRouteContent(),
        CategoryRoute(),
      ],
      builder: (context, child, pageController) {
        return Scaffold(
          appBar: AppBar(
            title: Text(context.tabsRouter.current.title(context)),
          ),
          body: child,
        );
      },
      scrollDirection: Axis.horizontal,
    );
  }
}
