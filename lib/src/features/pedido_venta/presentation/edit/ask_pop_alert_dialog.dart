import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class AskPopAlertDialog extends StatelessWidget {
  const AskPopAlertDialog({
    super.key,
    required this.contextDialog,
    required this.text,
  });
  final BuildContext contextDialog;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(contextDialog).askPopAlertDialog_atencion),
      content: Text(text),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(contextDialog, false),
          child: Text(S.of(contextDialog).askPopAlertDialog_cancelar),
        ),
        TextButton(
          onPressed: () => Navigator.pop(contextDialog, true),
          child: Text(S.of(contextDialog).askPopAlertDialog_aceptar),
        ),
      ],
    );
  }
}
