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
            Flexible(
              child: SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(pedidoVentaLinea.pedidoVentaLineaAppId!),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(pedidoVentaLinea.articuloId,
                              style: Theme.of(context).textTheme.subtitle2),
                          Row(
                            children: [
                              Text(
                                '${numberFormatCantidades(pedidoVentaLinea.cantidad)} ${(pedidoVentaLinea.cantidad == 1) ? S.of(context).unidad : S.of(context).unidades}',
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${S.of(context).pedido_edit_lineaNuevoTile_precio} ${formatPrecios(
                                precio: pedidoVentaLinea.precioDivisa,
                                tipoPrecio: pedidoVentaLinea.tipoPrecio,
                              )}',
                              style: Theme.of(context).textTheme.caption,
                            ),
                            if (pedidoVentaLinea.descuento1 != 0 ||
                                pedidoVentaLinea.descuento2 != 0 ||
                                pedidoVentaLinea.descuento3 != 0)
                              Text(
                                '${S.of(context).pedido_edit_lineaNuevoTile_dto} ${dtoText(
                                  pedidoVentaLinea.descuento1,
                                  pedidoVentaLinea.descuento2,
                                  pedidoVentaLinea.descuento3,
                                )}',
                                style: Theme.of(context).textTheme.caption,
                              ),
                          ],
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
