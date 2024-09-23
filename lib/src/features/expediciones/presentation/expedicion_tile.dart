import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../core/routing/app_auto_router.dart';
import '../domain/expedicion.dart';

import '../../../../generated/l10n.dart';
import '../../../core/helpers/formatters.dart';
import '../../pedido_venta/domain/pedido_local_param.dart';

class ExpedicionListaTile extends StatelessWidget {
  const ExpedicionListaTile({
    super.key,
    required this.expedicion,
  });

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
                    enviada: expedicion.enviada,
                    pedidoVentaEstadoId: expedicion.pedidoVentaEstado?.id,
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
                          expedicion.pedidoVentaId ??
                              (expedicion.enviada
                                  ? S.of(context).pending
                                  : S.of(context).pedido_index_offline),
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
                            expedicion.pedidoVentaDate
                                .toLocal()
                                .toIso8601String(),
                          ),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const Spacer(),
                        Text(
                          ((expedicion.pedidoVentaEstado != null))
                              ? expedicion.pedidoVentaEstado!.descripcion
                              : getEstadoPedidoLocal(context, false,
                                  expedicion.enviada, expedicion.tratada)!,
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
                          '#${expedicion.clienteId} ${expedicion.nombreCliente}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              formatCodigoPostalAndPoblacion(
                                  codigoPostal: expedicion.codigoPostal,
                                  poblacion: expedicion.poblacion),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(fontSize: 10),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              formatProvinciaAndPais(
                                  province: expedicion.provincia,
                                  pais: expedicion.pais),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(fontSize: 10),
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
                        Text(expedicion.baseImponible.toString()),
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
