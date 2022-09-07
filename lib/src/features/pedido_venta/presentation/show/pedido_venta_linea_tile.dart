import 'package:flutter/material.dart';

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
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(
            0.2,
          ),
          width: 1,
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 90,
              color: Theme.of(context).colorScheme.surface,
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(pedidoVentaLinea.pedidoVentaId,
                      style: Theme.of(context).textTheme.caption),
                  Text(pedidoVentaLinea.id),
                ],
              ),
            ),
            Flexible(
              child: Container(
                height: 100,
                padding: const EdgeInsets.all(6.5),
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
                                '${pedidoVentaLinea.cantidad.toDouble()} unidades',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ],
                          ),
                        ]),
                    Text(
                      pedidoVentaLinea.articuloDescription!,
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
                              'Pricio: ${pedidoVentaLinea.precioDivisa}x${pedidoVentaLinea.tipoPrecio}',
                              style: Theme.of(context).textTheme.caption,
                            ),
                            if (pedidoVentaLinea.descuento1 != 0.0 ||
                                pedidoVentaLinea.descuento2 != 0.0 ||
                                pedidoVentaLinea.descuento3 != 0.0)
                              Text(
                                dtoText(
                                    context,
                                    pedidoVentaLinea.descuento1,
                                    pedidoVentaLinea.descuento2,
                                    pedidoVentaLinea.descuento2),
                                style: Theme.of(context).textTheme.caption,
                              ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'X',
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
