import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/chip_container.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/column_field_text_detail.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/mobile_custom_separatos.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/show/pedido_venta_linea_tile.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/entity_id_is_local_param.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/common_widgets/row_field_text_detail.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../domain/pedido_venta.dart';
import '../../infrastructure/pedido_venta_repository.dart';
import '../index/pedido_search_state.dart';

class PedidoVentaDetallePage extends ConsumerWidget {
  const PedidoVentaDetallePage(
      {super.key, required this.pedidoVentaIdIsLocalParam});

  final EntityIdIsLocalParam pedidoVentaIdIsLocalParam;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pedidoVentaProvider(pedidoVentaIdIsLocalParam));

    return Scaffold(
      appBar: AppBar(
        title: Text(
            '${S.of(context).pedido_show_pedidoVentaDetalle_titulo} ${(pedidoVentaIdIsLocalParam.isLocal) ? 'Provisional' : pedidoVentaIdIsLocalParam.id}'),
        actions: state.maybeWhen(
            orElse: () => null,
            data: (pedidoVenta) => (pedidoVenta.isEditable())
                ? [
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () => context.router.push(
                        PedidoVentaEditRoute(id: pedidoVenta.pedidoVentaAppId),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        ref.read(deletePedidoVentaProvider(
                            pedidoVentaIdIsLocalParam.id));
                        ref.invalidate(pedidosSearchResultsProvider);
                        context.router.pop();
                      },
                    ),
                  ]
                : null),
      ),
      body: AsyncValueWidget<PedidoVenta>(
        value: state,
        data: (pedidoVenta) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClienteInfoContainer(pedidoVenta: pedidoVenta),
                    gapH12,
                    if (!pedidoVenta.getIsLocal())
                      AlbaranesContainer(
                          pedidoVentaId: pedidoVenta.pedidoVentaId!),
                    PedidoVentaInfoContainer(pedidoVenta: pedidoVenta),
                  ],
                ),
              ),
              PedidoVentaLineaContainer(
                pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ClienteInfoContainer extends StatelessWidget {
  const ClienteInfoContainer({super.key, required this.pedidoVenta});

  final PedidoVenta pedidoVenta;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                pedidoVenta.nombreCliente,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
            ChipContainer(
              text: (pedidoVenta.pedidoVentaEstado != null)
                  ? pedidoVenta.pedidoVentaEstado!.descripcion
                  : getEstadoPedidoLocal(
                      context, pedidoVenta.enviada, pedidoVenta.tratada)!,
              color: pedidoVentaEstadoColor(
                  pedidoVentaEstadoId: pedidoVenta.pedidoVentaEstado?.id,
                  opacidad: 0.25),
            )
          ],
        ),
        gapH4,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                '#${pedidoVenta.clienteId} ${pedidoVenta.nombreCliente}',
              ),
            ),
            gapW12,
            Text(
              dateFormatter(
                pedidoVenta.pedidoVentaDate.toLocal().toIso8601String(),
                allDay: true,
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
        if (pedidoVenta.pedidoCliente != null)
          ColumnFieldTextDetalle(
            fieldTitleValue:
                S.of(context).pedido_show_pedidoVentaDetalle_pedidoCliente,
            value: pedidoVenta.pedidoCliente,
          ),
        if (pedidoVenta.observaciones != null)
          ColumnFieldTextDetalle(
            fieldTitleValue:
                S.of(context).pedido_show_pedidoVentaDetalle_remarks,
            value: pedidoVenta.observaciones,
          ),
        RowFieldTextDetalle(
          fieldTitleValue:
              S.of(context).pedido_show_pedidoVentaDetalle_totalLineas,
          value: pedidoVenta.totalLineas.toString(),
        ),
        RowFieldTextDetalle(
          fieldTitleValue:
              S.of(context).pedido_show_pedidoVentaDetalle_importePortes,
          value: pedidoVenta.importePortes.toString(),
        ),
        RowFieldTextDetalle(
          fieldTitleValue:
              S.of(context).pedido_show_pedidoVentaDetalle_baseImponible,
          value: pedidoVenta.baseImponible.toString(),
        ),
        RowFieldTextDetalle(
          fieldTitleValue:
              '${S.of(context).pedido_show_pedidoVentaDetalle_importeIva} (${pedidoVenta.iva}%)',
          value: pedidoVenta.importeIva.toString(),
        ),
        RowFieldTextDetalle(
          fieldTitleValue: S.of(context).pedido_show_pedidoVentaDetalle_total,
          value: pedidoVenta.total.toString(),
        ),
      ],
    );
  }
}

class AlbaranesContainer extends ConsumerWidget {
  const AlbaranesContainer({super.key, required this.pedidoVentaId});

  final String pedidoVentaId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pedidoVentaAlbaranProvider(pedidoVentaId));
    return state.when(
        data: (albaranes) => ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: albaranes.length,
              separatorBuilder: (context, i) => const Divider(),
              itemBuilder: (context, i) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Albarán',
                      value: albaranes[i].albaranId),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Fecha',
                      value: dateFormatter(
                          albaranes[i].fechaAlbaran.toLocal().toIso8601String(),
                          allDay: true)),
                  if (albaranes[i].trackId != null)
                    RowFieldTextDetalle(
                        fieldTitleValue: 'Tracking',
                        value: albaranes[i].trackId),
                ],
              ),
            ),
        error: (error, _) => ErrorMessageWidget(error.toString()),
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}

class PedidoVentaLineaContainer extends ConsumerWidget {
  const PedidoVentaLineaContainer(
      {super.key, required this.pedidoVentaIdIsLocalParam});

  final EntityIdIsLocalParam pedidoVentaIdIsLocalParam;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state =
        ref.watch(pedidoVentaLineaProvider(pedidoVentaIdIsLocalParam));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MobileCustomSeparators(
            separatorTitle:
                S.of(context).pedido_show_pedidoVentaDetalle_lineas),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: state.when(
            data: (pedidoVentaLineaList) => (pedidoVentaLineaList.isEmpty)
                ? Center(child: Text(S.of(context).sinResultados))
                : ListView.separated(
                    separatorBuilder: (context, i) => const Divider(),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, i) => PedidoVentaLineaTile(
                      pedidoVentaLinea: pedidoVentaLineaList[i],
                    ),
                    itemCount: pedidoVentaLineaList.length,
                  ),
            error: (e, _) => ErrorMessageWidget(e.toString()),
            loading: () => const ProgressIndicatorWidget(),
          ),
        )
      ],
    );
  }
}
