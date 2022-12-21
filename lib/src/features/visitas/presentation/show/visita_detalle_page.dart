import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/column_field_text_detail.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/chip_container.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../domain/visita.dart';
import '../../../../core/domain/entity_id_is_local_param.dart';
import '../../infrastructure/visita_repository.dart';

class VisitaDetallePage extends ConsumerWidget {
  const VisitaDetallePage({super.key, required this.visitaIdIsLocalParam});

  final EntityIdIsLocalParam visitaIdIsLocalParam;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(visitaProvider(visitaIdIsLocalParam));
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).visita_show_visitaDetalle_titulo),
        actions: state.maybeWhen(
            orElse: () => null,
            data: (visita) => (visita.isEditable())
                ? [
                    IconButton(
                      onPressed: () => navigateToEditVisita(
                          context, visitaIdIsLocalParam.id),
                      icon: const Icon(Icons.edit),
                    )
                  ]
                : null),
      ),
      body: AsyncValueWidget<Visita>(
        value: state,
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
                  if (getEstadoVisitaLocal(
                          context, visita.enviada, visita.tratada) !=
                      null)
                    ChipContainer(
                      text: getEstadoVisitaLocal(
                          context, visita.enviada, visita.tratada)!,
                      color: getColorEstadoVisitaLocal(
                          context, visita.enviada, visita.tratada),
                    ),
                ],
              ),
              Flexible(
                child: Text(
                  visita.getNombreMostrar(),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              if (visita.clienteProvisionalEmail != null)
                ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S.of(context).visitas_show_visitaDetalle_email,
                  value: visita.clienteProvisionalEmail!,
                ),
              if (visita.clienteProvisionalTelefono != null)
                ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S.of(context).visitas_show_visitaDetalle_telefono,
                  value: visita.clienteProvisionalTelefono!,
                ),
              if (visita.clienteProvisionalPoblacion != null)
                ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S.of(context).visitas_show_visitaDetalle_poblacion,
                  value: visita.clienteProvisionalPoblacion!,
                ),
              gapH8,
              if (visita.resumen != null)
                ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S.of(context).visitas_show_visitaDetalle_resumen,
                  value: visita.resumen!,
                ),
              ColumnFieldTextDetalle(
                fieldTitleValue:
                    S.of(context).visitas_show_visitaDetalle_contacto,
                value: visita.contacto,
              ),
              if (visita.atendidoPor != null)
                ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S.of(context).visitas_show_visitaDetalle_atendidoPor,
                  value: visita.atendidoPor,
                ),
              if (visita.marcasCompetencia != null)
                ColumnFieldTextDetalle(
                  fieldTitleValue: S
                      .of(context)
                      .visitas_show_visitaDetalle_marcasCompetencia,
                  value: visita.marcasCompetencia,
                ),
              if (visita.errorSyncMessage != null) const Divider(),
              if (visita.errorSyncMessage != null)
                Text(
                  visita.errorSyncMessage!,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(color: Theme.of(context).colorScheme.error),
                )
            ],
          ),
        ),
      ),
    );
  }

  void navigateToEditVisita(BuildContext context, String id) {
    context.router.push(VisitaEditRoute(id: id));
  }
}
