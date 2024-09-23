import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../generated/l10n.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../../articulos/infrastructure/articulo_repository.dart';

import '../../../../core/helpers/formatters.dart';
import '../../domain/pedido_venta_linea.dart';
import '../../domain/pedido_venta_linea_ultimos_precios_param.dart';

class PedidoVentaLineaNuevoTile extends ConsumerWidget {
  const PedidoVentaLineaNuevoTile(
      {super.key,
      required this.pedidoVentaLinea,
      required this.clienteId,
      required this.isLocal});

  final PedidoVentaLinea pedidoVentaLinea;
  final String clienteId;
  final bool isLocal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articuloPrecioValue = ref.watch(articuloUltimosPreciosProvider(
        UltimosPreciosParam(
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
                  Text(pedidoVentaLinea.pedidoVentaLineaId!),
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
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => context.router.push(
                            ArticuloDetalleRoute(
                                articuloId: pedidoVentaLinea.articuloId),
                          ),
                          child: Text(
                            pedidoVentaLinea.articuloId,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                          ),
                        ),
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
                          !pedidoVentaLinea.isComponente)
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
                  if (pedidoVentaLinea.stockDisponible != null)
                    Text(
                      '${S.of(context).pedido_edit_pedidoEdit_stockDisponible} ${pedidoVentaLinea.stockDisponible} ${S.of(context).unidad}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  articuloPrecioValue.maybeWhen(
                    orElse: () => Container(),
                    data: (ultimosPrecios) => ultimosPrecios != null
                        ? Text(
                            '${S.of(context).pedido_edit_pedidoEdit_ultimoPrecioDeCompra}:  ${formatPrecioYDescuento(
                              precio: ultimosPrecios.precioDivisa,
                              tipoPrecio: ultimosPrecios.tipoPrecio,
                              descuento1: ultimosPrecios.descuento1,
                              descuento2: ultimosPrecios.descuento2,
                              descuento3: ultimosPrecios.descuento3,
                            )} (${numberFormatCantidades(ultimosPrecios.cantidad)} ${S.of(context).unidad})',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        : Container(),
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
