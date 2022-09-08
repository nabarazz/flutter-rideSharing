import 'package:flutter/material.dart';

extension ContextExtForBaseState on BuildContext {
  void showSnackBar(BuildContext context, String message, IconData icon) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        padding: const EdgeInsets.all(12),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: Colors.green,
            ),
            Text(message),
            const SizedBox(width: 15)
          ],
        ),
      ),
    );
  }
}
