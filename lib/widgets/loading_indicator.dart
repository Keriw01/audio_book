import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final double indicatorWidth;
  final double indicatorHeight;

  const LoadingIndicator({
    super.key,
    this.indicatorWidth = 100,
    this.indicatorHeight = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: indicatorWidth,
        height: indicatorHeight,
        child: const CircularProgressIndicator(),
      ),
    );
  }
}
