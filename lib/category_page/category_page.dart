import 'package:flutter/material.dart';
import 'package:testproject/generated/l10n.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(S.of(context).categoryPageTitle),
    );
  }
}
