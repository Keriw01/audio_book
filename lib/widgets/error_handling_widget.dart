import 'package:flutter/material.dart';

class ErrorHandlingWidget extends StatelessWidget {
  final String textError;
  final Future<void> onRefresh;

  const ErrorHandlingWidget({
    super.key,
    required this.textError,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('Wystąpił błąd:'),
          Text(textError),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => onRefresh,
            child: const Text('Odśwież dane'),
          ),
        ],
      ),
    );
  }
}
