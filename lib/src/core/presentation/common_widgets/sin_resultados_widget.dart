import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class SinResultadosWidget extends StatelessWidget {
  const SinResultadosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(S.of(context).sinResultados),
      ),
    );
  }
}
