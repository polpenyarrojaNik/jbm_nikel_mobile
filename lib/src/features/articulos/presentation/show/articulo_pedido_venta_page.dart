import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_pedido_venta_linea.dart';

@RoutePage()
class ArticuloPedidoVentaPage extends ConsumerWidget {
  const ArticuloPedidoVentaPage(
      {super.key, required this.articuloId, required this.description});

  final String articuloId;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloPedidoVentaLineaListProvider(articuloId));
    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).articulo_show_articuloPedidoVenta_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: articuloId,
            subtitle: description,
          ),
          gapH8,
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) => ErrorMessageWidget(
              e.toString(),
            ),
            data: (articuloPedidoVentaLineaList) =>
                (articuloPedidoVentaLineaList.isNotEmpty)
                    ? Expanded(
                        child: ListView.separated(
                          itemCount: articuloPedidoVentaLineaList.length,
                          itemBuilder: (context, i) =>
                              ArticuloPedidoVentaLineaTile(
                            pedidoVentaLinea: articuloPedidoVentaLineaList[i],
                          ),
                          separatorBuilder: (context, i) => const Divider(),
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(S.of(context).sinResultados),
                        ],
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
        padding: listPadding,
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
                      style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ),
            const VerticalDivider(),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          '#${pedidoVentaLinea.clienteId} ${pedidoVentaLinea.nombreCliente}',
                          style: Theme.of(context).textTheme.titleSmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      gapW16,
                      Text(
                        '${numberFormatCantidades(pedidoVentaLinea.cantidad)} ${S.of(context).unidad}',
                      ),
                    ],
                  ),
                  gapH4,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        dateFormatter(pedidoVentaLinea.fechaPedido
                            .toLocal()
                            .toIso8601String()),
                      ),
                      Text(
                        formatPrecioYDescuento(
                          precio: pedidoVentaLinea.precioDivisa,
                          tipoPrecio: pedidoVentaLinea.tipoPrecio,
                          descuento1: pedidoVentaLinea.descuento1,
                          descuento2: pedidoVentaLinea.descuento2,
                          descuento3: pedidoVentaLinea.descuento3,
                        ),
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
