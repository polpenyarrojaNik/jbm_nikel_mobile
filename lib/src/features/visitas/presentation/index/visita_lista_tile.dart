import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_router.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/chip_container.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/visita.dart';

class VisitaListaTile extends StatelessWidget {
  const VisitaListaTile({super.key, required this.visita});

  final Visita visita;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToVisitaDetalle(
        context: context,
        id: visita.id ?? visita.visitaAppId!,
        isLocal: !visita.tratada,
      ),
      child: Container(
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
                if (getStatusLocalEntityText(
                        context, visita.enviada, visita.tratada) !=
                    null)
                  ChipContainer(
                    text: getStatusLocalEntityText(
                        context, visita.enviada, visita.tratada)!,
                    color: getStatusLocalEntityColor(
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
    context.goNamed(AppRoutes.visitashow.name,
        params: {'id': id}, extra: isLocal);
  }
}
