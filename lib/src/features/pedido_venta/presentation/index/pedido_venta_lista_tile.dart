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
      onTap: () => context.goNamed(
        AppRoutes.pedidoventashow.name,
        params: {
          'id': pedidoVenta.pedidoVentaId ?? pedidoVenta.pedidoVentaAppId!
        },
        extra: !pedidoVenta.tratada,
      ),
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      pedidoVenta.pedidoVentaId ??
                          pedidoVenta.pedidoVentaAppId!,
                      style: Theme.of(context).textTheme.subtitle2),
                  Text(
                    dateFormatter(
                      pedidoVenta.pedidoVentaDate.toLocal().toIso8601String(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      '#${pedidoVenta.clienteId} ${pedidoVenta.nombreCliente ?? ''}',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          formatCodigoPostalAndPoblacion(
                              codigoPostal: pedidoVenta.codigoPostal,
                              poblacion: pedidoVenta.poblacion),
                          style: Theme.of(context).textTheme.caption),
                      Text(
                          formatProvinciaAndPais(
                              province: pedidoVenta.provincia,
                              pais: pedidoVenta.pais),
                          style: Theme.of(context).textTheme.caption),
                    ],
                  ),
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
