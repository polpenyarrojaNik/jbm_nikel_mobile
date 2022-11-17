import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../helpers/formatters.dart';

class UltimaSyncDateWidget extends StatelessWidget {
  const UltimaSyncDateWidget({super.key, required this.ultimaSyncDate});
  final DateTime ultimaSyncDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 8, left: 8, bottom: 4),
      child: Text(
          '${S.of(context).commonWidgets_ultimaSincronizacion}: ${dateFormatter(ultimaSyncDate.toLocal().toIso8601String(), allDay: true)}',
          textAlign: TextAlign.end,
          style: Theme.of(context).textTheme.caption),
    );
  }
}
