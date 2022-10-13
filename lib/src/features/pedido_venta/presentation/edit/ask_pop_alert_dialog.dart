import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class AskPopAlertDialog extends StatelessWidget {
  const AskPopAlertDialog({super.key, required this.contextEditPage});
  final BuildContext contextEditPage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).pedido_edit_askPopAlertDialog_atencion),
      content: Text(
        S.of(context).pedido_edit_askPopAlertDialog_seguroQuieresSales,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => context.router.pop(false),
          child: Text(
            S.of(context).pedido_edit_askPopAlertDialog_cancelar,
          ),
        ),
        TextButton(
          onPressed: () => context.router.pop(true),
          child: Text(
            S.of(context).pedido_edit_askPopAlertDialog_aceptar,
          ),
        )
      ],
    );
  }
}
