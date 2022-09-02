import 'package:flutter/material.dart';

import '../../helpers/formatters.dart';

class LastSyncDateWidget extends StatelessWidget {
  const LastSyncDateWidget({Key? key, required this.lastSyncDate})
      : super(key: key);
  final DateTime lastSyncDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Text(
          'Última sincronización: ${dateFormatter(lastSyncDate.toLocal().toIso8601String(), allDay: true)}',
          textAlign: TextAlign.end,
          style: Theme.of(context).textTheme.caption),
    );
  }
}
