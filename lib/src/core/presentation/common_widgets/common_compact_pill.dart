import 'package:flutter/material.dart';

class CommonCompactPill extends StatelessWidget {
  const CommonCompactPill({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.foreGroundColor,
  });

  final String label;
  final Color? backgroundColor;
  final Color? foreGroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color:
            backgroundColor ??
            Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color:
              foreGroundColor ?? Theme.of(context).colorScheme.outlineVariant,
        ),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
          color:
              foreGroundColor ?? Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}
