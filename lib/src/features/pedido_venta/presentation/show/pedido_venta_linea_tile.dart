import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../domain/pedido_venta_linea.dart';

class PedidoVentaLineaTile extends StatelessWidget {
  const PedidoVentaLineaTile({
    super.key,
    required this.pedidoVentaLinea,
  });

  final PedidoVentaLinea pedidoVentaLinea;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!pedidoVentaLinea.isComponente())
                    Text(
                      pedidoVentaLinea.pedidoVentaLineaId ??
                          pedidoVentaLinea.pedidoVentaLineaAppId!,
                    ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          pedidoVentaLinea.articuloId,
                          style: (!pedidoVentaLinea.isComponente())
                              ? Theme.of(context).textTheme.titleSmall
                              : Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.color),
                        ),
                        Row(
                          children: [
                            Text(
                              '${numberFormatCantidades(pedidoVentaLinea.cantidad)} ${S.of(context).unidad}',
                              style: (!pedidoVentaLinea.isComponente())
                                  ? Theme.of(context).textTheme.titleSmall
                                  : Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.color),
                            ),
                          ],
                        ),
                      ]),
                  Text(
                    pedidoVentaLinea.articuloDescription,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  if (!pedidoVentaLinea.isComponente()) const Spacer(),
                  if (!pedidoVentaLinea.isComponente())
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '${S.of(context).pedido_show_pedidoVentaDetalle_precio}: ${formatPrecioYDescuento(
                            precio: pedidoVentaLinea.precioDivisa,
                            tipoPrecio: pedidoVentaLinea.tipoPrecio,
                            descuento1: pedidoVentaLinea.descuento1,
                            descuento2: pedidoVentaLinea.descuento2,
                            descuento3: pedidoVentaLinea.descuento3,
                          )}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        if (pedidoVentaLinea.importeLinea != null)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                pedidoVentaLinea.importeLinea.toString(),
                              ),
                            ],
                          ),
                      ],
                    ),
                  if (pedidoVentaLinea.cantidadPendiente != 0)
                    Text(
                      '${S.of(context).pedido_show_pedidoVentaLineas_cantidadPendiente}: ${pedidoVentaLinea.cantidadPendiente} ${S.of(context).unidad}',
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
