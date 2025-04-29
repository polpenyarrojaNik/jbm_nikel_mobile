import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

Future<void> showToast(String message, BuildContext context) async {
  await showFlash(
    context: context,
    duration: const Duration(seconds: 2),
    builder:
        (context, controller) => FlashBar(
          controller: controller,
          backgroundColor: Colors.black.withValues(alpha: 0.7),
          margin: const EdgeInsets.all(8.0),
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              message,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
  );
}
