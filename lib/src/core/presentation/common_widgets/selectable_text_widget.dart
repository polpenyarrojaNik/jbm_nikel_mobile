import 'package:flutter/material.dart';

class SelectableTextWidget extends StatelessWidget {
  const SelectableTextWidget(this.textValue, {super.key, this.style});

  final String textValue;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      textValue,
      selectionControls: MaterialTextSelectionControls(),
      style: style,
    );
  }
}
