import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:testproject/styles/colors.dart';

@AutoRoute()
class ListenButton extends StatelessWidget {
  final String text;
  final VoidCallback navigate;

  const ListenButton({
    super.key,
    required this.text,
    required this.navigate,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: navigate,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        elevation: 0,
        backgroundColor: primaryColor,
        surfaceTintColor: whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: whiteColor),
      ),
    );
  }
}
