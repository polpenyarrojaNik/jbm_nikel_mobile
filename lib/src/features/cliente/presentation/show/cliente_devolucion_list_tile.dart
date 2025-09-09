import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../devoluciones/domain/devolucion.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/routing/app_auto_router.dart';

class ClienteDevolucionListTile extends StatelessWidget {
  const ClienteDevolucionListTile({super.key, required this.devolucion});

  final Devolucion devolucion;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(
        ClienteDevolucionDetalleRoute(devolucion: devolucion),
      ),
      child: IntrinsicHeight(
        child: Container(
          padding: const EdgeInsets.only(right: 16),
          color: Colors.transparent,
          child: SizedBox(
            height: 110,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          devolucion.id,
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).textTheme.bodyMedium?.color,
                              ),
                        ),
                        Text(
                          dateFormatter(
                            devolucion.fechaDevolucion
                                .toLocal()
                                .toIso8601String(),
                          ),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const Spacer(),
                        Text(
                          devolucion.devolucionEstado.descripcion,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '#${devolucion.clienteId} ${devolucion.nombre}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              formatCustomerAddress(
                                devolucion.direccionRecogida1,
                                devolucion.codigoPostal,
                                devolucion.poblacion,
                                null,
                                devolucion.pais,
                              ),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '${numberFormatCantidades(devolucion.bultos)} ${S.of(context).cliente_show_clienteDevolucion_bultos}',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
