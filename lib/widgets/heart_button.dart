import 'package:flutter/material.dart';
import 'package:testproject/styles/colors.dart';

class HeartButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isFavorite;

  const HeartButton({
    super.key,
    required this.onPressed,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 48,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_outline,
          color: heartColor,
          size: 30,
        ),
        padding: EdgeInsets.zero,
      ),
    );
  }
}
