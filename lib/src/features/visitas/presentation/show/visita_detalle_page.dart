import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';

import '../../../../../generated/l10n.dart';
import '../../domain/visita.dart';
import '../../infrastructure/visita_repository.dart';

class VisitaDetallePage extends StatelessWidget {
  const VisitaDetallePage({super.key, required this.visitaId});

  final String visitaId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).visita_show_visitaDetalle_titulo),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final visitaValue = ref.watch(visitaProvider(visitaId));
          return AsyncValueWidget<Visita>(
            value: visitaValue,
            data: (visita) => Text(
              visita.id,
            ),
          );
        },
      ),
    );
  }
}
