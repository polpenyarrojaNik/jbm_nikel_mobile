import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
              if (value is String)
                if (selectable)
                  SelectableText(
                    value as String,
                    selectionControls: MaterialTextSelectionControls(),
                  )
                else
                  Text(value as String)
              else
                value as Widget,
              const Gap(4),
            ],
          )
        : Container();
  }
}
