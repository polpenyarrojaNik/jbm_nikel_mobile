import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DeafaultDropdownSeparatorWidget extends StatelessWidget {
  const DeafaultDropdownSeparatorWidget({
    super.key,
    required this.title,
    required this.showAll,
    required this.onIconPressed,
    bool? showButtonRight,
  }) : showButtonRight = showButtonRight ?? true;
  final String? title;
  final bool showAll;
  final Function() onIconPressed;
  final bool showButtonRight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onIconPressed,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHigh,
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).primaryColor.withValues(alpha: 0.12),
              width: 1.0,
            ),
          ),
        ),
        child: !showButtonRight
            ? Row(
                mainAxisAlignment: title != null
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: onIconPressed,
                    visualDensity: const VisualDensity(
                      vertical: -4,
                      horizontal: -4,
                    ),
                    icon: Icon(
                      showAll ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  if (title != null) const Gap(4),
                  if (title != null)
                    Text(
                      title!,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                ],
              )
            : Row(
                mainAxisAlignment: title != null
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.center,
                children: [
                  if (title != null)
                    Text(
                      title!,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  IconButton(
                    onPressed: onIconPressed,
                    visualDensity: const VisualDensity(
                      vertical: -4,
                      horizontal: -4,
                    ),
                    icon: Icon(
                      showAll ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
