import 'package:flutter/material.dart';

class RowFieldTextDetalle extends StatelessWidget {
  const RowFieldTextDetalle({
    super.key,
    required this.fieldTitleValue,
    required this.value,
  });
  final String fieldTitleValue;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          fieldTitleValue,
          textAlign: TextAlign.end,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Theme.of(context).textTheme.bodySmall!.color,
          ),
        ),
        (value is String)
            ? Flexible(
                child: Text(
                  value as String,
                  style: Theme.of(context).textTheme.bodyMedium!,
                  textAlign: TextAlign.end,
                ),
              )
            : value as Widget,
      ],
    );
  }
}
