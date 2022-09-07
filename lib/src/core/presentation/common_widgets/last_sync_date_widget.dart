import 'package:flutter/material.dart';

import '../../helpers/formatters.dart';

class UltimaSyncDateWidget extends StatelessWidget {
  const UltimaSyncDateWidget({Key? key, required this.ultimaSyncDate})
      : super(key: key);
  final DateTime ultimaSyncDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Text(
          'Última sincronización: ${dateFormatter(ultimaSyncDate.toLocal().toIso8601String(), allDay: true)}',
          textAlign: TextAlign.end,
          style: Theme.of(context).textTheme.caption),
    );
  }
}
