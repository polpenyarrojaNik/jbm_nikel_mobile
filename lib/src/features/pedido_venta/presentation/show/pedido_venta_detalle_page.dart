import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/mobile_custom_separatos.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/common_widgets/row_field_text_detail.dart';
import '../../../../core/routing/app_router.dart';
import '../../../articulos/presentation/show/articulo_pedido_venta_page.dart';
import '../../domain/pedido_venta.dart';
import '../../infrastructure/pedido_venta_repository.dart';

class PedidoVentaDetallePage extends StatelessWidget {
  const PedidoVentaDetallePage({super.key, required this.pedidoVentaId});

  final String pedidoVentaId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedido venta detalle'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => context.goNamed(
              AppRoutes.salesorderedit.name,
              params: {
                'id': pedidoVentaId,
              },
            ),
          ),
        ],
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final pedidoVentaValue =
              ref.watch(pedidoVentaProvider(pedidoVentaId));
          final stateUltimaSync = ref.watch(pedidoVentaUltimaSyncProvider);

          return AsyncValueWidget<PedidoVenta>(
            value: pedidoVentaValue,
            data: (pedidoVenta) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: stateUltimaSync.when(
                        data: (ultimaSyncDate) => UltimaSyncDateWidget(
                            ultimaSyncDate: ultimaSyncDate),
                        error: (e, _) => ErrorMessageWidget(e.toString()),
                        loading: () => const ProgressIndicatorWidget()),
                  ),
                  ClienteInfoContainer(pedidoVenta: pedidoVenta),
                  const SizedBox(height: 5.0),
                  PedidoVentaInfoContainer(pedidoVenta: pedidoVenta),
                  const SizedBox(height: 5.0),
                  PedidoVentaLineaContainer(
                      pedidoVentaId: pedidoVenta.pedidoVentaId)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ClienteInfoContainer extends StatelessWidget {
  const ClienteInfoContainer({super.key, required this.pedidoVenta});

  final PedidoVenta pedidoVenta;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        left: 8.0,
        right: 8.0,
      ),
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(
            color: Colors.grey.withOpacity(
              0.2,
            ),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (pedidoVenta.nombreCliente != null)
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        pedidoVenta.nombreCliente!,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                  ],
                ),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      '#${pedidoVenta.clienteId} ${pedidoVenta.nombreCliente ?? ''}',
                    ),
                  ),
                ],
              ),
              Text(
                formatCodigoPostalAndPoblacion(
                  codigoPostal: pedidoVenta.codigoPostal,
                  poblacion: pedidoVenta.poblacion,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).textTheme.caption!.color,
                    ),
              ),
              Text(
                formatProvinciaAndPais(
                  province: pedidoVenta.provincia,
                  pais: pedidoVenta.pais,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).textTheme.caption!.color,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PedidoVentaInfoContainer extends StatelessWidget {
  const PedidoVentaInfoContainer({super.key, required this.pedidoVenta});

  final PedidoVenta pedidoVenta;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(
                color: Colors.grey.withOpacity(
                  0.2,
                ),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Status',
                      value: pedidoVenta.pedidoVentaEstado.descripcion),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Date',
                      value: dateFormatter(pedidoVenta.pedidoVentaDate
                          .toLocal()
                          .toIso8601String())),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(
                color: Colors.grey.withOpacity(
                  0.2,
                ),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Base Imponible',
                      value: pedidoVenta.baseImponible.toString()),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Importe IVA (${pedidoVenta.iva}%)',
                      value: pedidoVenta.importeIva.toString()),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Total',
                      value: pedidoVenta.total.toString()),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PedidoVentaLineaContainer extends ConsumerWidget {
  const PedidoVentaLineaContainer({super.key, required this.pedidoVentaId});

  final String pedidoVentaId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pedidoVentaLineaProvider(pedidoVentaId));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MobileCustomSeparators(separatorTitle: 'Lineas'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: state.when(
            data: (pedidoVentaLineaList) => (pedidoVentaLineaList.isEmpty)
                ? const Center(child: Text('No results'))
                : Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, i) => PedidoVentaLineaTile(
                          pedidoVentaLinea: pedidoVentaLineaList[i]),
                      itemCount: pedidoVentaLineaList.length,
                    ),
                  ),
            error: (e, _) => ErrorMessageWidget(e.toString()),
            loading: () => const ProgressIndicatorWidget(),
          ),
        )
      ],
    );
  }
}
