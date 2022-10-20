import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
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
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).articulo_show_articuloPedidoVenta_titulo,
            entityId: articuloId,
            subtitle: description,
          ),
          state.maybeWhen(
            orElse: () => const SliverFillRemaining(
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (articuloPedidoVentaLineaList) =>
                (articuloPedidoVentaLineaList.isNotEmpty)
                    ? SliverPadding(
                        padding: const EdgeInsets.all(16),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            childCount: articuloPedidoVentaLineaList.length,
                            (context, i) => Column(
                              children: [
                                ArticuloPedidoVentaLineaTile(
                                  pedidoVentaLinea:
                                      articuloPedidoVentaLineaList[i],
                                ),
                                const Divider(),
                              ],
                            ),
                          ),
                        ))
                    : SliverFillRemaining(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(S.of(context).sinResultados),
                          ],
                        ),
                      ),
          ),
        ],
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
                        '${numberFormatCantidades(pedidoVentaLinea.cantidad)} ${S.of(context).unidad}',
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
