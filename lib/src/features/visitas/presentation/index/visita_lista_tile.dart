import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';

import '../../../../core/domain/entity_id_is_local_param.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/chip_container.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/visita.dart';

class VisitaListaTile extends StatelessWidget {
  const VisitaListaTile(
      {super.key, required this.visita, required this.navigatedFromCliente});

  final Visita visita;
  final bool navigatedFromCliente;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => (!navigatedFromCliente)
          ? navigateToVisitaDetalle(
              context: context,
              id: visita.id ?? visita.visitaAppId!,
              isLocal: !visita.tratada,
            )
          : null,
      child: Container(
        padding: listPadding,
        color: Colors.transparent,
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
            Text(
              '#${visita.clienteId} ${(visita.nombreCliente != null) ? visita.nombreCliente : ''}',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            gapH8,
            if (visita.resumen != null)
              Text(
                visita.resumen!,
                maxLines: 3,
                style: Theme.of(context).textTheme.caption,
              ),
          ],
        ),
      ),
    );
  }

  void navigateToVisitaDetalle(
      {required BuildContext context,
      required String id,
      required bool isLocal}) {
    context.router.push(
      VisitaDetalleRoute(
        visitaIdIsLocalParam:
            EntityIdIsLocalParam(id: id, isLocal: isLocal, isNew: false),
      ),
    );
  }
}
