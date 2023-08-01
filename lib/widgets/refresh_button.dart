import 'package:flutter/material.dart';

class RefreshButton extends StatelessWidget {
  final Function refreshData;
  const RefreshButton({super.key, required this.refreshData});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => refreshData,
        child: const Text('Odśwież'),
      ),
    );
  }
}
