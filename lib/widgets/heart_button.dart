import 'package:flutter/material.dart';
import 'package:testproject/styles/colors.dart';

/// HeartButton is a custom IconButton that represents the favorite/like status.
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
    // Returns a sized box containing an IconButton representing the favorite/like status.
    return SizedBox(
      width: 48,
      height: 48,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          // Displays the appropriate icon based on the favorite/like status.
          isFavorite ? Icons.favorite : Icons.favorite_outline,
          color: heartColor,
          size: 30,
        ),
        padding: EdgeInsets.zero,
      ),
    );
  }
}
