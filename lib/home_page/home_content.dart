import 'package:flutter/material.dart';

import 'choose_kind_section.dart';
import 'favorite_section.dart';
import 'featured_section.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FavoriteItems(),
            ChooseKind(),
            SizedBox(
              height: 10,
            ),
            FeaturedSection()
          ],
        ),
      ),
    );
  }
}
