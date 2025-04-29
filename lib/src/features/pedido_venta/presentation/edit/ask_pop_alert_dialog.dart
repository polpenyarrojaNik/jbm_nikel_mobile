import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class AskPopAlertDialog extends StatelessWidget {
  const AskPopAlertDialog({
    super.key,
    required this.contextEditPage,
    required this.text,
  });
  final BuildContext contextEditPage;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).askPopAlertDialog_atencion),
      content: Text(text),
      actions: <Widget>[
        TextButton(
          onPressed: () => context.router.maybePop(false),
          child: Text(S.of(context).askPopAlertDialog_cancelar),
        ),
        TextButton(
          onPressed: () => context.router.maybePop(true),
          child: Text(S.of(context).askPopAlertDialog_aceptar),
        ),
      ],
    );
  }
}
