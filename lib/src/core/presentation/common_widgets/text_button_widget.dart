import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {super.key,
      required this.titleText,
      required this.entityId,
      required this.navigateFunction,
      required this.params});

  final String titleText;
  final String entityId;
  final Function() navigateFunction;
  final Map<String, String> params;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => navigateFunction(),
      child: Text(titleText),
    );
  }
}
