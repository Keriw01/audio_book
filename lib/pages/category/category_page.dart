import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/routes/app_router.gr.dart';
import 'package:testproject/styles/colors.dart';

@AutoRoute()
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.categoryPageTitle),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            context.router.replace(const LoginRoute());
          },
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.fromLTRB(75, 10, 75, 10),
            ),
            backgroundColor: MaterialStateProperty.all(seedColor),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
            ),
          ),
          child: Text(
            S.of(context).logOut,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
      ),
    );
  }
}
