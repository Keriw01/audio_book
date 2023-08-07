import 'package:flutter/material.dart';
import 'package:testproject/styles/colors.dart';

class ReadButton extends StatelessWidget {
  final String url;
  final String text;

  const ReadButton({super.key, required this.url, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
        ElevatedButton(
          onPressed: () {},
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
