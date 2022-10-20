import 'package:flutter/material.dart';
import 'package:jbm_nikel_mobile/generated/l10n.dart';

import '../../../../core/helpers/formatters.dart';
import '../../domain/pedido_venta_linea.dart';

class PedidoVentaLineaNuevoTile extends StatelessWidget {
  const PedidoVentaLineaNuevoTile({super.key, required this.pedidoVentaLinea});

  final PedidoVentaLinea pedidoVentaLinea;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: (pedidoVentaLinea.pedidoLineaIdComponente != null)
          ? Theme.of(context).colorScheme.secondaryContainer.withOpacity(0.5)
          : Colors.transparent,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(pedidoVentaLinea.pedidoVentaLineaAppId!),
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
                        Text(pedidoVentaLinea.articuloId,
                            style: Theme.of(context).textTheme.subtitle2),
                        Row(
                          children: [
                            Text(
                              '${numberFormatCantidades(pedidoVentaLinea.cantidad)} ${S.of(context).unidad}',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ],
                        ),
                      ]),
                  Text(
                    pedidoVentaLinea.articuloDescription,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${S.of(context).pedido_edit_lineaNuevoTile_precio} ${formatPrecioYDescuento(
                          precio: pedidoVentaLinea.precioDivisa,
                          tipoPrecio: pedidoVentaLinea.tipoPrecio,
                          descuento1: pedidoVentaLinea.descuento1,
                          descuento2: pedidoVentaLinea.descuento2,
                          descuento3: pedidoVentaLinea.descuento3,
                        )}',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      if (pedidoVentaLinea.importeLinea != null &&
                          !pedidoVentaLinea.isComponente())
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
