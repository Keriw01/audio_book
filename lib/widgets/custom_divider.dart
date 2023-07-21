import 'package:flutter/material.dart';
import 'package:testproject/styles/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      thickness: 1,
      color: dividerColor,
    );
  }
}
