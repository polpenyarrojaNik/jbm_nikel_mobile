import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_pedido_venta_linea.dart';

class ArticuloPedidoVentaPage extends ConsumerWidget {
  const ArticuloPedidoVentaPage(
      {super.key, required this.articuloId, required this.description});

  final String articuloId;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloPedidoVentaLineaListProvider(articuloId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedidos Venta'),
        bottom: AppBar(
          title: Column(
            children: [
              Text(articuloId),
              Text(description, style: Theme.of(context).textTheme.bodyText2),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: state.when(
            data: (pedidoVentaLineaLista) => (pedidoVentaLineaLista.isEmpty)
                ? const Center(child: Text('Sin resultado'))
                : ListView.separated(
                    separatorBuilder: (context, i) => const Divider(),
                    itemBuilder: (context, i) => ArticuloPedidoVentaLineaTile(
                        pedidoVentaLinea: pedidoVentaLineaLista[i]),
                    itemCount: pedidoVentaLineaLista.length,
                  ),
            error: (e, _) => ErrorMessageWidget(e.toString()),
            loading: () => const ProgressIndicatorWidget()),
      ),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pedidoVentaLinea.pedidoVentaId,
                  ),
                  Text(pedidoVentaLinea.id,
                      style: Theme.of(context).textTheme.caption),
                ],
              ),
            ),
            const VerticalDivider(),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                        '#${pedidoVentaLinea.clienteId} ${pedidoVentaLinea.nombreCliente}',
                        style: Theme.of(context).textTheme.subtitle2),
                  ),
                  gapH4,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${numberFormatCantidades(pedidoVentaLinea.cantidad)} ${((pedidoVentaLinea.cantidad) != 1) ? 'unidades' : 'unidad'}',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).textTheme.caption?.color),
                      ),
                      Text(
                        formatPrecioYDescuento(
                          precio: pedidoVentaLinea.precioDivisa,
                          tipoPrecio: pedidoVentaLinea.tipoPrecio,
                          descuento1: pedidoVentaLinea.descuento1,
                          descuento2: pedidoVentaLinea.descuento2,
                          descuento3: pedidoVentaLinea.descuento3,
                        ),
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).textTheme.caption?.color),
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
