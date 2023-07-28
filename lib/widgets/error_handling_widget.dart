import 'package:flutter/material.dart';
import 'package:testproject/generated/l10n.dart';

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
          Text(S.of(context).errorOccured),
          Text(textError),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => onRefresh,
            child: Text(S.of(context).refreshData),
          ),
        ],
      ),
    );
  }
}
