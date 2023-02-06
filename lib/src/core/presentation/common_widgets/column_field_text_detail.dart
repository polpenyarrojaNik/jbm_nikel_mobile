import 'package:flutter/material.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';

class ColumnFieldTextDetalle extends StatelessWidget {
  const ColumnFieldTextDetalle(
      {super.key, required this.fieldTitleValue, required this.value});
  final String fieldTitleValue;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return value != null
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fieldTitleValue,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).textTheme.bodySmall!.color),
              ),
              (value is String)
                  ? Text(
                      value,
                    )
                  : value,
              gapH4,
            ],
          )
        : Container();
  }
}
