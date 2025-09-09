import 'package:auto_route/auto_route.dart';
import 'package:better_open_file/better_open_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/async_value_widget.dart';
import '../../../../core/presentation/common_widgets/chip_container.dart';
import '../../../../core/presentation/common_widgets/column_field_text_detail.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/mobile_custom_separatos.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/common_widgets/row_field_text_detail.dart';
import '../../../../core/presentation/toasts.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../domain/pedido_local_param.dart';
import '../../domain/pedido_venta.dart';
import '../../infrastructure/pedido_venta_repository.dart';
import '../index/pedido_search_controller.dart';
import 'pedido_venta_adjunto_controller.dart';
import 'pedido_venta_linea_tile.dart';

@RoutePage()
class PedidoVentaDetallePage extends ConsumerWidget {
  const PedidoVentaDetallePage({super.key, required this.pedidoLocalParam});

  final PedidoLocalParam pedidoLocalParam;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pedidoVentaProvider(pedidoLocalParam));

    // final statePedidoBorrador = ref.watch(getPedidoVentaBorradorPendiente);

    ref.listen<PedidoVentaAdjuntoState>(
      pedidoVentaAdjuntoControllerProvider,
      (_, state) => state.when(
        data: (file) => (file != null) ? OpenFile.open(file.path) : null,
        error: (error) => showToast(error.toString(), context),
        loading: () => showToast(
          S.of(context).cliente_show_clienteAdjunto_abriendoArchivo,
          context,
        ),
        initial: () => null,
      ),
    );

    return Scaffold(
      appBar: CommonAppBar(
        titleText:
            ('${S.of(context).pedido_show_pedidoVentaDetalle_titulo} ${(pedidoLocalParam.isLocal) ? S.of(context).pedido_index_offline : pedidoLocalParam.pedidoId}'),
        actions: state.maybeWhen(
          orElse: () => null,
          data: (pedidoVenta) {
            if (pedidoLocalParam.pedidoId != null &&
                pedidoVenta.oferta != null &&
                pedidoVenta.oferta!) {
              final ofertaAdjuntoValue = ref.watch(
                ofertaHaveAttachmentProvider(pedidoLocalParam.pedidoId!),
              );
              return ofertaAdjuntoValue.maybeWhen(
                orElse: () => [
                  const SizedBox(
                    height: 25,
                    child: CircularProgressIndicator(strokeWidth: 2.5),
                  ),
                ],
                data: (ofertaHaveAttachment) => ofertaHaveAttachment
                    ? [
                        IconButton(
                          onPressed: () => _donwloadOfertaAttachment(
                            ref,
                            pedidoLocalParam.pedidoId!,
                          ),
                          icon: const Icon(Icons.picture_as_pdf),
                        ),
                        if (pedidoVenta.isEditable)
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () => context.router.push(
                              PedidoVentaEditRoute(
                                pedidoId: pedidoVenta.pedidoVentaId,
                                empresaId: pedidoVenta.empresaId,
                                isLocal: false,
                              ),
                            ),
                          ),
                      ]
                    : [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () => context.router.push(
                            PedidoVentaEditRoute(
                              pedidoId: pedidoVenta.pedidoVentaId,
                              empresaId: pedidoVenta.empresaId,
                              isLocal: false,
                            ),
                          ),
                        ),
                      ],
              );
            }
            if (pedidoVenta.isEditable) {
              return [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () => context.router.push(
                    PedidoVentaEditRoute(
                      pedidoAppId: pedidoVenta.pedidoVentaAppId,
                      empresaId: pedidoVenta.empresaId,
                      isLocal: true,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    ref.read(
                      deletePedidoVentaProvider(pedidoLocalParam.pedidoAppId!),
                    );
                    ref.invalidate(
                      pedidoVentaIndexScreenPaginatedControllerProvider,
                    );
                    ref.invalidate(pedidoVentaIndexScreenControllerProvider);
                    context.router.maybePop();
                  },
                ),
              ];
            }
            return null;
          },
        ),
      ),
      body: AsyncValueWidget<PedidoVenta>(
        value: state,
        onData: (pedidoVenta) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClienteInfoContainer(pedidoVenta: pedidoVenta),
                    const Gap(12),
                    PedidoVentaInfoContainer(pedidoVenta: pedidoVenta),
                    if (!pedidoVenta.isLocal) const Gap(12),
                    if (!pedidoVenta.isLocal)
                      AlbaranesContainer(
                        pedidoVentaId: pedidoVenta.pedidoVentaId!,
                      ),
                  ],
                ),
              ),
              PedidoVentaLineaContainer(pedidoLocalParam: pedidoLocalParam),
            ],
          ),
        ),
      ),
    );
  }

  void _donwloadOfertaAttachment(WidgetRef ref, String pedidoVentaId) {
    ref
        .read(pedidoVentaAdjuntoControllerProvider.notifier)
        .getAttachmentFile(pedidoVentaId: pedidoVentaId);
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
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            ChipContainer(
              text: (pedidoVenta.pedidoVentaEstado != null)
                  ? pedidoVenta.pedidoVentaEstado!.descripcion
                  : getEstadoPedidoLocal(
                      context,
                      pedidoVenta.enviada,
                      pedidoVenta.enviada,
                      pedidoVenta.tratada,
                    )!,
              color: pedidoVentaEstadoColor(
                pedidoVentaEstadoId: pedidoVenta.pedidoVentaEstado?.id,
                opacidad: 0.25,
              ),
            ),
          ],
        ),
        const Gap(4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                '#${pedidoVenta.clienteId} ${pedidoVenta.nombreCliente}',
              ),
            ),
            const Gap(12),
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
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).textTheme.bodySmall!.color,
          ),
        ),
        Text(
          formatProvinciaAndPais(
            province: pedidoVenta.provincia,
            pais: pedidoVenta.pais,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).textTheme.bodySmall!.color,
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
            fieldTitleValue: S
                .of(context)
                .pedido_show_pedidoVentaDetalle_pedidoCliente,
            value: pedidoVenta.pedidoCliente,
          ),
        if (pedidoVenta.observaciones != null)
          ColumnFieldTextDetalle(
            fieldTitleValue: S
                .of(context)
                .pedido_show_pedidoVentaDetalle_remarks,
            value: pedidoVenta.observaciones,
          ),
        RowFieldTextDetalle(
          fieldTitleValue: S
              .of(context)
              .pedido_show_pedidoVentaDetalle_totalLineas,
          value: pedidoVenta.totalLineas?.toString(),
        ),
        RowFieldTextDetalle(
          fieldTitleValue: S
              .of(context)
              .pedido_show_pedidoVentaDetalle_importePortes,
          value: pedidoVenta.importePortes?.toString(),
        ),
        RowFieldTextDetalle(
          fieldTitleValue: S
              .of(context)
              .pedido_show_pedidoVentaDetalle_baseImponible,
          value: pedidoVenta.baseImponible?.toString(),
        ),
        RowFieldTextDetalle(
          fieldTitleValue:
              '${S.of(context).pedido_show_pedidoVentaDetalle_importeIva} (${pedidoVenta.iva}%)',
          value: pedidoVenta.importeIva?.toString(),
        ),
        RowFieldTextDetalle(
          fieldTitleValue: S.of(context).pedido_show_pedidoVentaDetalle_total,
          value: pedidoVenta.total?.toString(),
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
      data: (albaranes) => (albaranes.isNotEmpty)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).pedido_show_pedidoVentaDetalle_albaranes,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).textTheme.bodySmall!.color,
                  ),
                ),
                const Gap(4),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: albaranes.length,
                  separatorBuilder: (context, i) => const Divider(),
                  itemBuilder: (context, i) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(albaranes[i].albaranId),
                          Text(
                            dateFormatter(
                              albaranes[i].fechaAlbaran
                                  .toLocal()
                                  .toIso8601String(),
                              allDay: true,
                            ),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      if (albaranes[i].trackId != null ||
                          albaranes[i].agencia != null)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (albaranes[i].trackId != null)
                              SelectableText(
                                'Tracking: ${albaranes[i].trackId!}',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            if (albaranes[i].agencia != null)
                              Text(
                                albaranes[i].agencia!,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            )
          : Container(),
      error: (error, _) => ErrorMessageWidget(error.toString()),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class PedidoVentaLineaContainer extends ConsumerWidget {
  const PedidoVentaLineaContainer({super.key, required this.pedidoLocalParam});

  final PedidoLocalParam pedidoLocalParam;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pedidoVentaLineaProvider(pedidoLocalParam));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MobileCustomSeparators(
          separatorTitle: S.of(context).pedido_show_pedidoVentaDetalle_lineas,
        ),
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
        ),
      ],
    );
  }
}
