import 'package:flutter/material.dart';

class AskPopAlertDialog extends StatelessWidget {
  const AskPopAlertDialog({super.key, required this.contextEditPage});
  final BuildContext contextEditPage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Atención:'),
      content: const Text(
        '¿Estás segura que quieres salir?',
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text(
            'Cancelar',
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: const Text(
            'Aceptar',
          ),
        )
      ],
    );
  }
}
