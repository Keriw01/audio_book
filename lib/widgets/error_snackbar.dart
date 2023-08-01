import 'package:flutter/material.dart';

class ErrorSnackbar extends StatelessWidget {
  final String textError;

  const ErrorSnackbar({
    super.key,
    required this.textError,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(textError),
          ),
        );
      },
    );
    return const SizedBox.shrink();
  }
}
