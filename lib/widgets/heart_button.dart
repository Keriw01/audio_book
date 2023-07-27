import 'package:flutter/material.dart';
import 'package:testproject/styles/colors.dart';

class HeartButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData iconData;

  const HeartButton({
    super.key,
    required this.onPressed,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 48,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          iconData,
          color: heartColor,
          size: 30,
        ),
        padding: EdgeInsets.zero,
      ),
    );
  }
}
