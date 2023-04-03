import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/generated/l10n.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../core/helpers/formatters.dart';
import '../../domain/pedido_venta_linea.dart';
import '../../domain/pedido_venta_linea_ultimos_precios_param.dart';

class PedidoVentaLineaNuevoTile extends ConsumerWidget {
  const PedidoVentaLineaNuevoTile(
      {super.key, required this.pedidoVentaLinea, required this.clienteId});

  final PedidoVentaLinea pedidoVentaLinea;
  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articuloPrecioValue = ref.watch(articuloUltimosPreciosProvider(
        PedidoVentaLineaUltimosPreciosParam(
            clienteId: clienteId, articuloId: pedidoVentaLinea.articuloId)));
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
                            style: Theme.of(context).textTheme.titleSmall),
                        Row(
                          children: [
                            Text(
                              '${numberFormatCantidades(pedidoVentaLinea.cantidad)} ${S.of(context).unidad}',
                              style: Theme.of(context).textTheme.titleSmall,
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
                        style: Theme.of(context).textTheme.bodySmall,
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
                  Text(
                    '${S.of(context).pedido_edit_pedidoEdit_stockDisponible} ${pedidoVentaLinea.stockDisponible} ${S.of(context).unidad}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  articuloPrecioValue.maybeWhen(
                    orElse: () => Container(),
                    data: (ultimosPrecios) => Text(
                      '${S.of(context).pedido_edit_pedidoEdit_ultimoPrecioDeCompra}: ${ultimosPrecios.precioDivisa.toString()}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
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
