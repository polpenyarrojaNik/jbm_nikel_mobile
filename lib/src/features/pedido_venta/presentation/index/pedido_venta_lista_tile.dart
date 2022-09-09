import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/routing/app_router.dart';
import '../../domain/pedido_venta.dart';

class PedidoVentaListaTile extends StatelessWidget {
  const PedidoVentaListaTile({super.key, required this.pedidoVenta});

  final PedidoVenta pedidoVenta;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.goNamed(AppRoutes.salesordershow.name,
          params: {'id': pedidoVenta.pedidoVentaId}),
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4), // if you need this
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(pedidoVenta.pedidoVentaId),
                  Text(dateFormatter(
                      pedidoVenta.pedidoVentaDate.toIso8601String())),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      '#${pedidoVenta.clienteId} ${pedidoVenta.nombreCliente ?? ''}',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(pedidoVenta.baseImponible.toString()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
