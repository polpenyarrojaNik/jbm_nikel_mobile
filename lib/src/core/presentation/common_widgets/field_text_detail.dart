import 'package:flutter/material.dart';

class FieldTextDetail extends StatelessWidget {
  const FieldTextDetail(
      {Key? key, required this.fieldTitleValue, required this.value})
      : super(key: key);
  final String fieldTitleValue;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(fieldTitleValue,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Theme.of(context).textTheme.caption!.color)),
        (value is String)
            ? Text(
                value,
              )
            : value,
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
