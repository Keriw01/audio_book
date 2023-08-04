import 'package:flutter/material.dart';
import 'package:testproject/styles/colors.dart';

class ReadButton extends StatelessWidget {
  final String url;
  final String text;

  const ReadButton({super.key, required this.url, required this.text});

  @override
  Widget build(BuildContext context) {
    return url.isNotEmpty
        ? TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: seedColor,
              foregroundColor: whiteColor,
              padding: const EdgeInsets.symmetric(horizontal: 15),
            ),
            child: Text(
              text,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          )
        : const SizedBox.shrink();
  }
}
