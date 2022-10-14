import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';

import '../../../../core/domain/entity_id_is_local_param.dart';
import '../../../../core/helpers/formatters.dart';
import '../../domain/pedido_venta.dart';

class PedidoVentaListaTile extends StatelessWidget {
  const PedidoVentaListaTile({super.key, required this.pedidoVenta});

  final PedidoVenta pedidoVenta;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(
        PedidoVentaDetalleRoute(
          pedidoVentaIdIsLocalParam: EntityIdIsLocalParam(
            id: pedidoVenta.pedidoVentaId ?? pedidoVenta.pedidoVentaAppId!,
            isNew: false,
            isLocal: !pedidoVenta.tratada,
          ),
        ),
      ),
      child: IntrinsicHeight(
        child: Container(
          color: Colors.transparent,
          child: SizedBox(
            height: 90,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 8,
                  color: pedidoVentaEstadoColor(
                    pedidoVentaEstadoId: pedidoVenta.pedidoVentaEstado?.id,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.5, horizontal: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pedidoVenta.pedidoVentaId ?? 'Provisional',
                          style: Theme.of(context).textTheme.caption?.copyWith(
                              color:
                                  Theme.of(context).textTheme.bodyText2?.color),
                        ),
                        Text(
                          dateFormatter(
                            pedidoVenta.pedidoVentaDate
                                .toLocal()
                                .toIso8601String(),
                          ),
                          style: Theme.of(context).textTheme.caption,
                        ),
                        const Spacer(),
                        Text(
                          ((pedidoVenta.pedidoVentaEstado != null))
                              ? pedidoVenta.pedidoVentaEstado!.descripcion
                              : getEstadoPedidoLocal(context,
                                  pedidoVenta.enviada, pedidoVenta.tratada)!,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.5, horizontal: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '#${pedidoVenta.clienteId} ${pedidoVenta.nombreCliente}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              formatCodigoPostalAndPoblacion(
                                  codigoPostal: pedidoVenta.codigoPostal,
                                  poblacion: pedidoVenta.poblacion),
                              style: Theme.of(context).textTheme.caption,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                                formatProvinciaAndPais(
                                    province: pedidoVenta.provincia,
                                    pais: pedidoVenta.pais),
                                style: Theme.of(context).textTheme.caption),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(pedidoVenta.baseImponible.toString()),
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
