import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  final String title;
  const AppBarCustom(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).appBarTheme.titleTextStyle,
      ),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}
