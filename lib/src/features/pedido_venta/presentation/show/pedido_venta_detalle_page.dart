import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../../core/routing/app_router.dart';
import '../../domain/pedido_venta.dart';
import '../../infrastructure/pedido_venta_repository.dart';

class PedidoVentaDetallePage extends StatelessWidget {
  const PedidoVentaDetallePage(
      {super.key, required this.pedidoVentaIdIsLocalParam});

  final EntityIdIsLocalParam pedidoVentaIdIsLocalParam;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '${S.of(context).pedido_show_pedidoVentaDetalle_titulo} ${pedidoVentaIdIsLocalParam.id}'),
        actions: [
          if (pedidoVentaIdIsLocalParam.isLocal)
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () => context.goNamed(
                AppRoutes.pedidoventaedit.name,
                params: {
                  'id': pedidoVentaIdIsLocalParam.id,
                },
              ),
            ),
        ],
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final pedidoVentaValue =
              ref.watch(pedidoVentaProvider(pedidoVentaIdIsLocalParam));

          return AsyncValueWidget<PedidoVenta>(
            value: pedidoVentaValue,
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
                        PedidoVentaInfoContainer(pedidoVenta: pedidoVenta),
                      ],
                    ),
                  ),
                  PedidoVentaLineaContainer(
                      pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam)
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (pedidoVenta.nombreCliente != null)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  pedidoVenta.nombreCliente!,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              ChipContainer(
                text: (pedidoVenta.tratada)
                    ? pedidoVenta.pedidoVentaEstado!.descripcion
                    : getStatusLocalEntityText(
                        context, pedidoVenta.enviada, pedidoVenta.tratada)!,
                color: (pedidoVenta.tratada)
                    ? Theme.of(context).colorScheme.secondaryContainer
                    : getStatusLocalEntityColor(
                        context, pedidoVenta.enviada, pedidoVenta.tratada)!,
              )
            ],
          ),
        const SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                '#${pedidoVenta.clienteId} ${pedidoVenta.nombreCliente ?? ''}',
              ),
            ),
            Text(
              dateFormatter(
                pedidoVenta.pedidoVentaDate.toLocal().toIso8601String(),
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
        ColumnFieldTextDetalle(
          fieldTitleValue:
              S.of(context).pedido_show_pedidoVentaDetalle_baseImponible,
          value: pedidoVenta.baseImponible.toString(),
        ),
        ColumnFieldTextDetalle(
          fieldTitleValue:
              '${S.of(context).pedido_show_pedidoVentaDetalle_importeIva} (${pedidoVenta.iva}%)',
          value: pedidoVenta.importeIva.toString(),
        ),
        ColumnFieldTextDetalle(
          fieldTitleValue: S.of(context).pedido_show_pedidoVentaDetalle_total,
          value: pedidoVenta.total.toString(),
        ),
      ],
    );
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
