import 'package:flutter/material.dart';

class ChipContainer extends StatelessWidget {
  const ChipContainer({super.key, required this.text, required this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.caption,
        ),
      ),
    );
  }
}
