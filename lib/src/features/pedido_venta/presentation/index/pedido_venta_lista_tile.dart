import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../domain/pedido_local_param.dart';
import '../../domain/pedido_venta.dart';

class PedidoVentaListaTile extends StatelessWidget {
  const PedidoVentaListaTile({
    super.key,
    required this.pedidoVenta,
  });

  final PedidoVenta pedidoVenta;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => (!pedidoVenta.borrador)
          ? context.router.push(
              PedidoVentaDetalleRoute(
                pedidoLocalParam: PedidoLocalParam(
                    pedidoId: pedidoVenta.pedidoVentaId,
                    empresaId: pedidoVenta.empresaId,
                    pedidoAppId: pedidoVenta.pedidoVentaAppId,
                    isEdit: false,
                    tratada: pedidoVenta.tratada),
              ),
            )
          : context.router.push(
              PedidoVentaEditRoute(
                  pedidoAppId: pedidoVenta.pedidoVentaAppId, isLocal: true),
            ),
      child: IntrinsicHeight(
        child: Container(
          padding: const EdgeInsets.only(right: 16),
          color: Colors.transparent,
          child: SizedBox(
            height: 100,
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
                  flex: 5,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pedidoVenta.pedidoVentaId ??
                              S.of(context).pedido_index_offline,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.color),
                        ),
                        Text(
                          dateFormatter(
                            pedidoVenta.pedidoVentaDate
                                .toLocal()
                                .toIso8601String(),
                          ),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const Spacer(),
                        Text(
                          ((pedidoVenta.pedidoVentaEstado != null))
                              ? pedidoVenta.pedidoVentaEstado!.descripcion
                              : getEstadoPedidoLocal(
                                  context,
                                  pedidoVenta.borrador,
                                  pedidoVenta.enviada,
                                  pedidoVenta.tratada)!,
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
                              style: Theme.of(context).textTheme.bodySmall,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                                formatProvinciaAndPais(
                                    province: pedidoVenta.provincia,
                                    pais: pedidoVenta.pais),
                                style: Theme.of(context).textTheme.bodySmall),
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
