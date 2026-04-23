import 'package:flutter/material.dart';

class CommonChipWidget extends StatelessWidget {
  const CommonChipWidget({
    super.key,
    required this.value,
    this.label,
    required this.backgroundColor,
    this.customTextColor,
  });

  final String value;
  final String? label;
  final Color backgroundColor;
  final Color? customTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: backgroundColor),
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (label != null)
            Text(
              label!,
              style: Theme.of(
                context,
              ).textTheme.labelSmall?.copyWith(color: customTextColor),
            ),
          Text(
            value,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: customTextColor,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
