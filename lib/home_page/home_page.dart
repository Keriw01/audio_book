import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/routes/app_router.gr.dart';

@AutoRoute()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final List<String> _widgetTitle = <String>[
    S.current.homePageTitle,
    S.current.categoryPageTitle,
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        HomeRouteContent(),
        CategoryRoute(),
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(_widgetTitle.elementAt(tabsRouter.activeIndex)),
          ),
          body: child,
        );
      },
      scrollDirection: Axis.horizontal,
    );
  }
}
