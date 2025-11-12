import 'package:flutter/material.dart';

class MobileCustomSeparators extends StatelessWidget {
  const MobileCustomSeparators({
    super.key,
    required this.separatorTitle,
    this.trailingWidget,
  });

  final String separatorTitle;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.055,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            separatorTitle,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),

          trailingWidget ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
