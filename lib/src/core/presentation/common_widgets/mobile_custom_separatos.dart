import 'package:flutter/material.dart';

class MobileCustomSeparators extends StatelessWidget {
  const MobileCustomSeparators({super.key, required this.separatorTitle});

  final String separatorTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.055,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      color: Theme.of(context).colorScheme.surfaceVariant,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            separatorTitle,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant),
          )
        ],
      ),
    );
  }
}
