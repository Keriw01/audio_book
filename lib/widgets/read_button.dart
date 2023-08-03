import 'package:flutter/material.dart';

class ReadButton extends StatelessWidget {
  final String url;
  final String text;

  const ReadButton({super.key, required this.url, required this.text});

  @override
  Widget build(BuildContext context) {
    return url.isNotEmpty
        ? TextButton(
            onPressed: () {},
            child: Text(text),
          )
        : const SizedBox.shrink();
  }
}
