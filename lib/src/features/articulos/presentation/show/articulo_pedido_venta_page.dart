import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../pedido_venta/domain/pedido_venta_linea.dart';
import '../../domain/articulo_pedido_venta_linea.dart';

class ArticuloPedidoVentaPage extends ConsumerWidget {
  const ArticuloPedidoVentaPage({super.key, required this.articuloId});

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloPedidoVentaLineaListProvider(articuloId));
    return Scaffold(
      appBar: AppBar(title: const Text('Pedidos')),
      body: state.when(
          data: (pedidoVentaLineaLista) => (pedidoVentaLineaLista.isEmpty)
              ? const Center(child: Text('No Results'))
              : ListView.separated(
                  separatorBuilder: (context, i) => const Divider(),
                  itemBuilder: (context, i) => ArticuloPedidoVentaLineaTile(
                      pedidoVentaLinea: pedidoVentaLineaLista[i]),
                  itemCount: pedidoVentaLineaLista.length,
                ),
          error: (e, _) => ErrorMessageWidget(e.toString()),
          loading: () => const ProgressIndicatorWidget()),
    );
  }
}

class ArticuloPedidoVentaLineaTile extends StatelessWidget {
  const ArticuloPedidoVentaLineaTile({
    super.key,
    required this.pedidoVentaLinea,
  });

  final ArticuloPedidoVentaLinea pedidoVentaLinea;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
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
                  Text(
                      '#${pedidoVentaLinea.clienteId} ${pedidoVentaLinea.nombreCliente}',
                      style: Theme.of(context).textTheme.subtitle2),
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
                            'Pricio: ${numberFormat(pedidoVentaLinea.precioDivisa)}x${pedidoVentaLinea.tipoPrecio}',
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
                        children: [
                          Row(
                            children: [
                              Text(
                                '${numberFormat(pedidoVentaLinea.cantidad)} unidades',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ],
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
    );
  }
}
