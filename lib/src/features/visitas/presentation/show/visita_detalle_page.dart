import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/column_field_text_detail.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_router.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/chip_container.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/visita.dart';
import '../../domain/visita_id_is_local_param.dart';
import '../../infrastructure/visita_repository.dart';

class VisitaDetallePage extends StatelessWidget {
  const VisitaDetallePage({super.key, required this.visitaIdIsLocalParam});

  final VisitaIdIsLocalParam visitaIdIsLocalParam;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).visita_show_visitaDetalle_titulo),
        actions: [
          if (visitaIdIsLocalParam.isLocal)
            IconButton(
                onPressed: () =>
                    navigateToEditVisita(context, visitaIdIsLocalParam.id!),
                icon: const Icon(Icons.edit))
        ],
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final visitaValue = ref.watch(visitaProvider(visitaIdIsLocalParam));
          return AsyncValueWidget<Visita>(
            value: visitaValue,
            data: (visita) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dateFormatter(visita.fecha.toLocal().toIso8601String()),
                      ),
                      if (getStatusVisitaText(
                              context, visita.enviada, visita.tratada) !=
                          null)
                        ChipContainer(
                          text: getStatusVisitaText(
                              context, visita.enviada, visita.tratada)!,
                          color: getStatusVisitaColor(
                              context, visita.enviada, visita.tratada),
                        ),
                    ],
                  ),
                  Flexible(
                    child: Text(
                      '#${visita.clienteId} ${(visita.nombreCliente != null) ? visita.nombreCliente : ''}',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  gapH8,
                  if (visita.resumen != null)
                    ColumnFieldTextDetalle(
                        fieldTitleValue:
                            S.of(context).visitas_show_visitaDetalle_resumen,
                        value: visita.resumen!),
                  if (visita.contacto != null)
                    ColumnFieldTextDetalle(
                        fieldTitleValue:
                            S.of(context).visitas_show_visitaDetalle_contacto,
                        value: visita.contacto!),
                  if (visita.errorSyncMessage != null) const Divider(),
                  if (visita.errorSyncMessage != null)
                    Text(
                      visita.errorSyncMessage!,
                      style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Theme.of(context).colorScheme.error),
                    )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void navigateToEditVisita(BuildContext context, String id) {
    context.goNamed(AppRoutes.visitaedit.name, params: {'id': id});
  }
}
