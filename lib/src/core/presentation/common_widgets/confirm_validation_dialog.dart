import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class ConfirmValidationDialog extends StatelessWidget {
  const ConfirmValidationDialog({
    super.key,
    required this.infoText,
    required this.dialogContext,
  });

  final String infoText;
  final BuildContext dialogContext;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(infoText),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(dialogContext).pop(false),
          child: Text(S.of(context).cancel),
        ),
        TextButton(
          onPressed: () => Navigator.of(dialogContext).pop(true),
          child: Text(S.of(context).accept),
        ),
      ],
    );
  }
}
