import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/routing/app_auto_router.dart';
import '../domain/expedicion.dart';

import '../../../../generated/l10n.dart';
import '../../../core/helpers/formatters.dart';
import '../../pedido_venta/domain/pedido_local_param.dart';

class ExpedicionListaTile extends StatelessWidget {
  const ExpedicionListaTile({super.key, required this.expedicion});

  final Expedicion expedicion;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(
        PedidoVentaDetalleRoute(
          pedidoLocalParam: PedidoLocalParam(
            pedidoId: expedicion.pedidoVentaId,
            empresaId: expedicion.empresaId,
            pedidoAppId: null,
            isEdit: false,
            tratada: expedicion.tratada,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '#${expedicion.clienteId} ${expedicion.nombreCliente}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '${formatCodigoPostalAndPoblacion(codigoPostal: expedicion.codigoPostal, poblacion: expedicion.poblacion)} ${formatProvinciaAndPais(province: expedicion.provincia, pais: expedicion.pais)}',
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(fontSize: 10),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const Gap(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Card(
                    child: SizedBox(
                      height: 110,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Theme.of(
                                context,
                              ).colorScheme.primaryContainer,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  S.of(context).commonWidgets_appDrawer_pedidos,
                                  style: Theme.of(context).textTheme.bodySmall
                                      ?.copyWith(
                                        fontSize: 10,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.onPrimaryContainer,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dateFormatter(
                                    expedicion.pedidoVentaDate
                                        .toLocal()
                                        .toIso8601String(),
                                  ),
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodySmall?.copyWith(fontSize: 10),
                                ),
                                Text(
                                  expedicion.pedidoVentaId ??
                                      (expedicion.enviada
                                          ? S.of(context).pending
                                          : S.of(context).pedido_index_offline),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Text(
                                  ((expedicion.pedidoVentaEstado != null))
                                      ? expedicion
                                            .pedidoVentaEstado!
                                            .descripcion
                                      : getEstadoPedidoLocal(
                                          context,
                                          false,
                                          expedicion.enviada,
                                          expedicion.tratada,
                                        )!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodySmall?.copyWith(fontSize: 10),
                                ),
                                Text(
                                  '${S.of(context).numLineas}: ${expedicion.numLineas.toString()}',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodySmall?.copyWith(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Gap(16),
                const Icon(Icons.arrow_forward),
                const Gap(16),
                Expanded(
                  child: Card(
                    child: SizedBox(
                      height: 110,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Theme.of(
                                context,
                              ).colorScheme.primaryContainer,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  S
                                      .of(context)
                                      .pedido_show_pedidoVentaDetalle_albaranes,
                                  style: Theme.of(context).textTheme.bodySmall
                                      ?.copyWith(
                                        fontSize: 10,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.onPrimaryContainer,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dateFormatter(
                                    expedicion.fechaAlbaran
                                        .toLocal()
                                        .toIso8601String(),
                                    allDay: true,
                                  ),
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodySmall?.copyWith(fontSize: 10),
                                ),
                                Text(
                                  expedicion.albaranId,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Text(
                                  expedicion.trackingEstado.descripcion,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodySmall?.copyWith(fontSize: 10),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                if (expedicion.agencia != null)
                                  Text(
                                    expedicion.agencia!,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.bodySmall
                                        ?.copyWith(fontSize: 10),
                                  ),
                                if (expedicion.trackId != null)
                                  Text(
                                    '${S.of(context).trackId}: ${expedicion.trackId!}',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.bodySmall
                                        ?.copyWith(fontSize: 10),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
