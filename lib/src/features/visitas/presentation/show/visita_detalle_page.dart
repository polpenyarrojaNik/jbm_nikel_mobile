import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/helpers/helpers.dart';
import '../../../../core/presentation/common_widgets/async_value_widget.dart';
import '../../../../core/presentation/common_widgets/column_field_text_detail.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/chip_container.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../domain/visita.dart';
import '../../domain/visita_id_param.dart';
import '../../infrastructure/visita_repository.dart';

part 'visita_detalle_page.g.dart';

@riverpod
class VisitaDetalleController extends _$VisitaDetalleController {
  VisitaDetalleController();

  @override
  Future<Visita> build(
    String id,
    bool isLocal,
    String? createVisitaFromClienteId,
  ) async {
    return ref
        .watch(visitaRepositoryProvider)
        .getVisitaById(
          visitaIdIsLocalParam: VisitaIdIsLocalParam(
            id: id,
            isLocal: isLocal,
            createVisitaFromClienteId: createVisitaFromClienteId,
          ),
        );
  }
}

@RoutePage()
class VisitaDetallePage extends ConsumerWidget {
  const VisitaDetallePage({super.key, required this.visitaIdIsLocalParam});

  final VisitaIdIsLocalParam visitaIdIsLocalParam;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      visitaDetalleControllerProvider(
        visitaIdIsLocalParam.id,
        visitaIdIsLocalParam.isLocal,
        visitaIdIsLocalParam.createVisitaFromClienteId,
      ),
    );
    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).visita_show_visitaDetalle_titulo),
        actions: state.maybeWhen(
          orElse: () => null,
          data:
              (visita) =>
                  (visita.isEditable())
                      ? [
                        IconButton(
                          onPressed:
                              () => navigateToEditVisita(
                                context,
                                visitaIdIsLocalParam.id,
                                visitaIdIsLocalParam.isLocal,
                              ),
                          icon: const Icon(Icons.edit),
                        ),
                      ]
                      : null,
        ),
      ),
      body: AsyncValueWidget<Visita>(
        value: state,
        data:
            (visita) => Padding(
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
                            context,
                            visita.enviada,
                            visita.tratada,
                          ) !=
                          null)
                        ChipContainer(
                          text:
                              getEstadoVisitaLocal(
                                context,
                                visita.enviada,
                                visita.tratada,
                              )!,
                          color: getColorEstadoVisitaLocal(
                            context,
                            visita.enviada,
                            visita.tratada,
                          ),
                        ),
                    ],
                  ),
                  Flexible(
                    child: Text(
                      visita.getNombreMostrar(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  if (visita.cliente?.email != null ||
                      visita.clienteProvisionalEmail != null)
                    Row(
                      children: [
                        Expanded(
                          child: ColumnFieldTextDetalle(
                            fieldTitleValue:
                                S.of(context).visitas_show_visitaDetalle_email,
                            value:
                                visita.cliente?.email ??
                                visita.clienteProvisionalEmail!,
                          ),
                        ),
                        const Gap(8),
                        IconButton.filledTonal(
                          onPressed:
                              () => navigateToEmailApp(
                                visita.cliente?.email ??
                                    visita.clienteProvisionalEmail!,
                              ),
                          visualDensity: VisualDensity.comfortable,
                          icon: Icon(
                            Icons.mail,
                            color: Theme.of(context).colorScheme.secondary,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  if (visita.cliente?.telefonoFijo != null ||
                      visita.clienteProvisionalTelefono != null)
                    Row(
                      children: [
                        Expanded(
                          child: ColumnFieldTextDetalle(
                            fieldTitleValue:
                                S
                                    .of(context)
                                    .visitas_show_visitaDetalle_telefono,
                            value:
                                visita.cliente?.telefonoFijo ??
                                visita.clienteProvisionalTelefono!,
                          ),
                        ),
                        const Gap(8),
                        IconButton.filledTonal(
                          onPressed:
                              () => openPhoneCall(
                                visita.cliente?.telefonoFijo ??
                                    visita.clienteProvisionalTelefono!,
                              ),
                          visualDensity: VisualDensity.comfortable,
                          icon: Icon(
                            Icons.phone,
                            color: Theme.of(context).colorScheme.secondary,
                            size: 18,
                          ),
                        ),
                      ],
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
                      fieldTitleValue:
                          S
                              .of(context)
                              .visitas_show_visitaDetalle_marcasCompetencia,
                      value: visita.marcasCompetencia,
                    ),
                  if (visita.errorSyncMessage != null) const Divider(),
                  if (visita.errorSyncMessage != null)
                    Text(
                      visita.errorSyncMessage!,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                ],
              ),
            ),
      ),
    );
  }

  void navigateToEditVisita(BuildContext context, String id, bool isLocal) {
    context.router.push(VisitaEditRoute(id: id, isLocal: isLocal));
  }
}
