import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';

import '../../domain/visita.dart';
import '../../infrastructure/visita_repository.dart';

class VisitaDetallePage extends StatelessWidget {
  const VisitaDetallePage({Key? key, required this.visitaId}) : super(key: key);

  final String visitaId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visita detalle'),
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
