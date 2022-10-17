import 'package:flutter/material.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';

class ColumnFieldTextDetalle extends StatelessWidget {
  const ColumnFieldTextDetalle(
      {super.key, required this.fieldTitleValue, required this.value});
  final String fieldTitleValue;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldTitleValue,
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: Theme.of(context).textTheme.caption!.color),
        ),
        (value is String)
            ? Text(
                value,
              )
            : value,
        gapH4,
      ],
    );
  }
}
