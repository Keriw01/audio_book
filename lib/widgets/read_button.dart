import 'package:flutter/material.dart';
import 'package:testproject/styles/colors.dart';

/// ReadButton is a custom widget representing a button for reading content.
class ReadButton extends StatelessWidget {
  final String text;
  final VoidCallback navigate;

  const ReadButton({
    super.key,
    required this.text,
    required this.navigate,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Positioned container to create a shadowed background for the button
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: 24,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: shadowColor,
                  blurRadius: 10,
                ),
              ],
            ),
          ),
        ),
        // ElevatedButton with custom styling for the reading TEXT/PDF button
        ElevatedButton(
          onPressed: navigate,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(15),
            shadowColor: shadowColor,
            elevation: 0,
            surfaceTintColor: whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}
