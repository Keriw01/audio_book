import 'package:flutter/material.dart';
import 'package:testproject/styles/colors.dart';

/// A custom divider widget with specific styling.
class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      thickness: 1,
      indent: 10,
      endIndent: 10,
      color: dividerColor,
    );
  }
}
