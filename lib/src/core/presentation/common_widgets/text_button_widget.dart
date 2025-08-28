import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.titleText,
    required this.entityId,
    required this.onNavigateTo,
    required this.params,
  });

  final String titleText;
  final String entityId;
  final Function() onNavigateTo;
  final Map<String, String> params;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () => onNavigateTo(), child: Text(titleText));
  }
}
