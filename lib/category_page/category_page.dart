import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:testproject/generated/l10n.dart';

@AutoRoute()
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(S.of(context).categoryPageTitle),
    );
  }
}
