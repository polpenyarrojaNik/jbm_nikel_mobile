import 'package:flutter/material.dart';

import '../theme/app_sizes.dart';

class ColumnFieldTextDetalle extends StatelessWidget {
  const ColumnFieldTextDetalle({
    super.key,
    required this.fieldTitleValue,
    required this.value,
    this.selectable = false,
  });
  final String fieldTitleValue;
  final dynamic value;
  final bool selectable;

  @override
  Widget build(BuildContext context) {
    return value != null
        ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              fieldTitleValue,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).textTheme.bodySmall!.color,
              ),
            ),
            (value is String)
                ? (selectable)
                    ? SelectableText(
                      value as String,
                      selectionControls: MaterialTextSelectionControls(),
                    )
                    : Text(value as String)
                : value as Widget,
            gapH4,
          ],
        )
        : Container();
  }
}
