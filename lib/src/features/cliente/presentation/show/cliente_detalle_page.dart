import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/async_value_widget.dart';
import '../../../../core/presentation/common_widgets/chip_container.dart';
import '../../../../core/presentation/common_widgets/column_field_text_detail.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/datos_extra_row.dart';
import '../../../../core/presentation/common_widgets/mobile_custom_separatos.dart';
import '../../../../core/presentation/common_widgets/selectable_text_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../domain/cliente.dart';
import '../../infrastructure/cliente_repository.dart';

@RoutePage()
class ClienteDetallePage extends ConsumerWidget {
  const ClienteDetallePage({super.key, required this.clienteId});

  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final params = {'clienteId': clienteId};

    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).cliente_show_clienteDetalle_titulo),
        actions: [
          IconButton(
            onPressed:
                () => navigateToCreatePedido(
                  context: context,
                  ref: ref,
                  clienteId: clienteId,
                ),
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
          IconButton(
            onPressed: () => navigateToCreateVisita(context, clienteId),
            icon: const Icon(Icons.group_add),
          ),
        ],
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final articuloValue = ref.watch(clienteProvider(clienteId));
          return AsyncValueWidget<Cliente>(
            value: articuloValue,
            data:
                (cliente) => ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    _ClienteInfoContainer(cliente: cliente),
                    _DatosRelacionados(cliente: cliente, params: params),
                    _Consultas(cliente: cliente, params: params),
                  ],
                ),
          );
        },
      ),
    );
  }

  void navigateToCreatePedido({
    required BuildContext context,
    required WidgetRef ref,
    required String clienteId,
  }) async {
    await context.router.push(
      PedidoVentaEditRoute(createPedidoFromClienteId: clienteId, isLocal: true),
    );
  }

  void navigateToCreateVisita(BuildContext context, String clienteId) {
    context.router.push(
      VisitaEditRoute(isNew: true, createVisitaFromClienteId: clienteId),
    );
  }
}

class _ClienteInfoContainer extends StatelessWidget {
  const _ClienteInfoContainer({required this.cliente});

  final Cliente cliente;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _ClienteHeader(cliente: cliente),
        _ClienteAnalisis(cliente: cliente),
        _ClientePreciosAndFormaDePago(cliente: cliente),
        _ClienteRiesgosContainer(cliente: cliente),
      ],
    );
  }
}

class _ClienteHeader extends StatelessWidget {
  const _ClienteHeader({required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  '#${cliente.id} ${cliente.nombreCliente}',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              if (cliente.clientePotencial ?? false) gapW8,
              if (cliente.clientePotencial ?? false)
                ChipContainer(
                  text: getClienteEstadoPotencialInLocalLanguage(
                    estadoPotencial: cliente.clienteEstadoPotencial,
                  ),
                  color: Theme.of(context).colorScheme.errorContainer,
                ),
            ],
          ),
          gapH8,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: SelectableText(
                  selectionControls: MaterialTextSelectionControls(),
                  formatCustomerAddress(
                    cliente.direccionPredeterminada1,
                    cliente.codigoPostalPredeterminada,
                    cliente.poblacionPredeterminada,
                    cliente.provinciaPredeterminada,
                    cliente.paisPredeterminada,
                  ),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).textTheme.bodySmall?.color,
                  ),
                ),
              ),
              IconButton(
                onPressed:
                    () => navigateToGoogleMapsAddress(
                      cliente.nombreCliente,
                      cliente.latitudPredeterminada,
                      cliente.longitudPredeterminada,
                    ),
                icon: Icon(MdiIcons.googleMaps),
              ),
            ],
          ),
          gapH8,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).cliente_show_clienteDetalle_fiscalData,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Theme.of(context).textTheme.bodySmall?.color,
                ),
              ),
              SelectableText(
                cliente.nombreFiscal,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              if (!isSameAddress(cliente)) gapH4,
              if (!isSameAddress(cliente))
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: SelectableText(
                        selectionControls: MaterialTextSelectionControls(),
                        formatCustomerAddress(
                          cliente.direccionFiscal1,
                          cliente.codigoPostalFiscal,
                          cliente.poblacionFiscal,
                          cliente.provinciaFiscal,
                          cliente.paisFiscal,
                        ),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).textTheme.bodySmall?.color,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed:
                          () => navigateToGoogleMapsAddress(
                            cliente.nombreFiscal,
                            cliente.latitudFiscal,
                            cliente.longitudFiscal,
                          ),
                      icon: Icon(MdiIcons.googleMaps),
                    ),
                  ],
                ),
            ],
          ),
          gapH8,
          if (cliente.nif != null)
            ColumnFieldTextDetalle(
              fieldTitleValue: S.of(context).cliente_show_clienteDetalle_nif,
              value: cliente.nif!,
              selectable: true,
            ),
          if (cliente.centralCompras != null)
            ColumnFieldTextDetalle(
              fieldTitleValue:
                  S.of(context).cliente_show_clienteDetalle_centralCompras,
              value: cliente.centralCompras!,
              selectable: true,
            ),
          if (cliente.representante1Nombre != null)
            ColumnFieldTextDetalle(
              fieldTitleValue:
                  S.of(context).cliente_show_clienteDetalle_comercial1,
              value: cliente.representante1Nombre!,
              selectable: true,
            ),
          if (cliente.representante2Nombre != null)
            ColumnFieldTextDetalle(
              fieldTitleValue:
                  S.of(context).cliente_show_clienteDetalle_comercial2,
              value: cliente.representante2Nombre!,
              selectable: true,
            ),
        ],
      ),
    );
  }

  void navigateToGoogleMapsAddress(
    String? nombre,
    double? latitude,
    double? longitude,
  ) async {
    if (latitude != null && longitude != null) {
      final isAvailable = await MapLauncher.isMapAvailable(MapType.google);
      if (isAvailable ?? false) {
        await MapLauncher.showMarker(
          mapType: MapType.google,
          coords: Coords(latitude, longitude),
          title: nombre ?? '',
        );
      } else {
        final isAvailable = await MapLauncher.isMapAvailable(MapType.apple);
        if (isAvailable ?? false) {
          await MapLauncher.showMarker(
            mapType: MapType.apple,
            coords: Coords(latitude, longitude),
            title: nombre ?? '',
          );
        }
      }
    }
  }
}

class _ClienteAnalisis extends StatelessWidget {
  const _ClienteAnalisis({required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MobileCustomSeparators(
          separatorTitle: S.of(context).cliente_show_clienteDetalle_analisis,
        ),
        gapH8,
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _VentasRowWidget(cliente: cliente),
              gapH8,
              _MargenRowWidget(cliente: cliente),
              gapH8,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ColumnFieldTextDetalle(
                      fieldTitleValue:
                          S
                              .of(context)
                              .cliente_show_clienteDetalle_porcentajeGarantias,
                      value:
                          '${numberFormatDecimal(cliente.porcentajeGarantias)}%',
                      selectable: true,
                    ),
                  ),
                  Expanded(
                    child: ColumnFieldTextDetalle(
                      fieldTitleValue:
                          S
                              .of(context)
                              .cliente_show_clienteDetalle_porcentajeAbonos,
                      value:
                          '${numberFormatDecimal(cliente.porcentajeAbonos)}%',
                      selectable: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _VentasRowWidget extends StatelessWidget {
  const _VentasRowWidget({required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).cliente_show_clienteDetalle_ventas,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Theme.of(context).textTheme.bodySmall!.color,
          ),
        ),
        gapH4,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    S.of(context).cliente_show_clienteDetalle_anoActual,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ),
                  SelectableTextWidget(
                    formatPrecios(
                      precio: cliente.ventasAnyoActual,
                      tipoPrecio: null,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    S.of(context).cliente_show_clienteDetalle_anoAnterior,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ),
                  SelectableTextWidget(
                    formatPrecios(
                      precio: cliente.ventasAnyoAnterior,
                      tipoPrecio: null,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    S.of(context).cliente_show_clienteDetalle_hace2Anos,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ),
                  SelectableTextWidget(
                    formatPrecios(
                      precio: cliente.ventasHaceDosAnyos,
                      tipoPrecio: null,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _MargenRowWidget extends StatelessWidget {
  const _MargenRowWidget({required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).cliente_show_clienteDetalle_margen,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Theme.of(context).textTheme.bodySmall!.color,
          ),
        ),
        gapH4,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    S.of(context).cliente_show_clienteDetalle_anoActual,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ),
                  SelectableTextWidget(
                    '${numberFormatDecimal(cliente.margenAnyoActual)}%',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    S.of(context).cliente_show_clienteDetalle_anoAnterior,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ),
                  SelectableTextWidget(
                    '${numberFormatDecimal(cliente.margenAnyoAnterior)}%',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    S.of(context).cliente_show_clienteDetalle_hace2Anos,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ),
                  SelectableTextWidget(
                    '${numberFormatDecimal(cliente.margenHaceDosAnyos)}%',
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ClientePreciosAndFormaDePago extends StatelessWidget {
  const _ClientePreciosAndFormaDePago({required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MobileCustomSeparators(
          separatorTitle:
              S.of(context).cliente_show_clienteDetalle_preciosYFormaDePago,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (cliente.divisa != null)
                ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S.of(context).cliente_show_clienteDetalle_divisa,
                  value: cliente.divisa?.descripcion,
                  selectable: true,
                ),
              if (cliente.tarifaDescripcion != null) gapH4,
              if (cliente.tarifaDescripcion != null)
                ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S.of(context).cliente_show_clienteDetalle_tarifa,
                  value: cliente.tarifaDescripcion ?? '',
                  selectable: true,
                ),
              if (cliente.descripcionDescuentoGeneral != null) gapH4,
              if (cliente.descripcionDescuentoGeneral != null)
                ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S
                          .of(context)
                          .cliente_show_clienteDetalle_descuentoGeneral,
                  value: cliente.descripcionDescuentoGeneral!,
                  selectable: true,
                ),
              gapH4,
              ColumnFieldTextDetalle(
                fieldTitleValue:
                    S.of(context).cliente_show_clienteDetalle_descuentoPP,
                value: '${numberFormatDecimal(cliente.descuentoProntoPago)}%',
                selectable: true,
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (cliente.plazoDeCobro != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                        fieldTitleValue:
                            S
                                .of(context)
                                .cliente_show_clienteDetalle_plazoDeCobro,
                        value: getPlazoCorboInLocalLanguage(
                          plazoDeCobro: cliente.plazoDeCobro!,
                        ),
                        selectable: true,
                      ),
                    ),
                  if (cliente.metodoDeCobro != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                        fieldTitleValue:
                            S
                                .of(context)
                                .cliente_show_clienteDetalle_metodoDeCobro,
                        value: getMetodoCobroInLocalLanguage(
                          metodoDeCobro: cliente.metodoDeCobro!,
                        ),
                        selectable: true,
                      ),
                    ),
                ],
              ),
              if (cliente.franqPortes1 != null ||
                  cliente.franqPortes2 != null ||
                  cliente.franqPortes3 != null ||
                  cliente.importePortes1 != null ||
                  cliente.importePortes2 != null ||
                  cliente.importePortes3 != null ||
                  cliente.franqPortes1 != 0 ||
                  cliente.franqPortes2 != 0 ||
                  cliente.franqPortes3 != 0 ||
                  cliente.importePortes1 != 0 ||
                  cliente.importePortes2 != 0 ||
                  cliente.importePortes3 != 0) ...[
                const Divider(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(''),
                        const Gap(4),
                        if (cliente.franqPortes1 != null &&
                            cliente.franqPortes1 != 0)
                          Text('Hasta'),
                      ],
                    ),
                    const Gap(16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Franquicia Portes'),
                          const Gap(4),
                          if (cliente.franqPortes1 != null &&
                              cliente.franqPortes1 != 0)
                            Text(
                              '${numberFormatCantidades(cliente.franqPortes1)}€',
                            ),

                          if (cliente.franqPortes2 != null &&
                              cliente.franqPortes2 != 0) ...[
                            const Gap(4),
                            Text(
                              '${numberFormatCantidades(cliente.franqPortes2)}€',
                            ),
                          ],

                          if (cliente.franqPortes3 != null &&
                              cliente.franqPortes3 != 0) ...[
                            const Gap(4),
                            Text(
                              '${numberFormatCantidades(cliente.franqPortes3)}€',
                            ),
                          ],
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Importe'),
                          const Gap(4),
                          if (cliente.franqPortes1 != null &&
                              cliente.franqPortes1 != 0)
                            Text(
                              '${numberFormatDecimal(cliente.importePortes1 ?? 0.0)}€',
                            ),

                          if (cliente.franqPortes2 != null &&
                              cliente.franqPortes2 != 0) ...[
                            const Gap(4),
                            Text(
                              '${numberFormatDecimal(cliente.importePortes2 ?? 0.0)}€',
                            ),
                          ],
                          if (cliente.franqPortes3 != null &&
                              cliente.franqPortes3 != 0) ...[
                            const Gap(4),
                            Text(
                              '${numberFormatDecimal(cliente.importePortes3 ?? 0.0)}€',
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _ClienteRiesgosContainer extends StatelessWidget {
  const _ClienteRiesgosContainer({required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MobileCustomSeparators(
          separatorTitle: S.of(context).cliente_show_clienteDetalle_riesgos,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            S
                                .of(context)
                                .cliente_show_clienteDetalle_riesgoActual,
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall!.copyWith(
                              color:
                                  Theme.of(context).textTheme.bodySmall!.color,
                            ),
                          ),
                          SelectableTextWidget(
                            formatPrecios(
                              precio: cliente.riesgoActual,
                              tipoPrecio: null,
                            ),
                          ),
                        ],
                      ),
                      if (!cliente.riesgoExcedido.isZero) gapH8,
                      if (!cliente.riesgoExcedido.isZero)
                        Column(
                          children: [
                            Text(
                              S
                                  .of(context)
                                  .cliente_show_clienteDetalle_riesgoExcedido,
                              style: Theme.of(
                                context,
                              ).textTheme.titleSmall!.copyWith(
                                color:
                                    Theme.of(
                                      context,
                                    ).textTheme.bodySmall!.color,
                              ),
                            ),
                            SelectableTextWidget(
                              formatPrecios(
                                precio: cliente.riesgoExcedido,
                                tipoPrecio: null,
                              ),
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium!.copyWith(
                                color: Theme.of(context).colorScheme.error,
                              ),
                            ),
                          ],
                        ),
                      gapH12,
                      Column(
                        children: [
                          Text(
                            S
                                .of(context)
                                .cliente_show_clienteDetalle_pdteCobroVencido,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.copyWith(
                              color:
                                  Theme.of(context).textTheme.bodySmall!.color,
                            ),
                          ),
                          SelectableTextWidget(
                            formatPrecios(
                              precio: cliente.riesgoPendienteCobroVencido!,
                              tipoPrecio: null,
                            ),
                            style:
                                (!cliente.riesgoPendienteCobroVencido!.isZero)
                                    ? Theme.of(
                                      context,
                                    ).textTheme.bodyMedium!.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.error,
                                    )
                                    : Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      gapH8,
                      Column(
                        children: [
                          Text(
                            S
                                .of(context)
                                .cliente_show_clienteDetalle_pdteCobroNoVencido,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.copyWith(
                              color:
                                  Theme.of(context).textTheme.bodySmall!.color,
                            ),
                          ),
                          SelectableTextWidget(
                            formatPrecios(
                              precio: cliente.riesgoPendienteCobroNoVencido!,
                              tipoPrecio: null,
                            ),
                          ),
                        ],
                      ),
                      gapH8,
                      Column(
                        children: [
                          Text(
                            S
                                .of(context)
                                .cliente_show_clienteDetalle_pdteServir,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.copyWith(
                              color:
                                  Theme.of(context).textTheme.bodySmall!.color,
                            ),
                          ),
                          SelectableTextWidget(
                            formatPrecios(
                              precio: cliente.riesgoPendienteServir!,
                              tipoPrecio: null,
                            ),
                          ),
                        ],
                      ),
                      gapH8,
                      Column(
                        children: [
                          Text(
                            S
                                .of(context)
                                .cliente_show_clienteDetalle_pdteFacturar,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.copyWith(
                              color:
                                  Theme.of(context).textTheme.bodySmall!.color,
                            ),
                          ),
                          SelectableTextWidget(
                            formatPrecios(
                              precio: cliente.riesgoPendienteFacturar!,
                              tipoPrecio: null,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(width: 24),
                Expanded(
                  child: Column(
                    children: [
                      if (cliente.riesgoConcedido != null)
                        Column(
                          children: [
                            Text(
                              S
                                  .of(context)
                                  .cliente_show_clienteDetalle_riesgoConcedido,
                              style: Theme.of(
                                context,
                              ).textTheme.titleSmall!.copyWith(
                                color:
                                    Theme.of(
                                      context,
                                    ).textTheme.bodySmall!.color,
                              ),
                            ),
                            SelectableTextWidget(
                              formatPrecios(
                                precio: cliente.riesgoConcedido!,
                                tipoPrecio: null,
                              ),
                            ),
                          ],
                        ),
                      gapH12,
                      Column(
                        children: [
                          Text(
                            'JBM',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.copyWith(
                              color:
                                  Theme.of(context).textTheme.bodySmall!.color,
                            ),
                          ),
                          SelectableTextWidget(
                            formatPrecios(
                              precio: cliente.riesgoConcedidoInterno,
                              tipoPrecio: null,
                            ),
                          ),
                          if (cliente.riesgoConcedidoInternoDate != null)
                            SelectableTextWidget(
                              dateFormatter(
                                cliente.riesgoConcedidoInternoDate!
                                    .toLocal()
                                    .toIso8601String(),
                              ),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                        ],
                      ),
                      gapH8,
                      Column(
                        children: [
                          Text(
                            'COFACE',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.copyWith(
                              color:
                                  Theme.of(context).textTheme.bodySmall!.color,
                            ),
                          ),
                          SelectableTextWidget(
                            formatPrecios(
                              precio: cliente.riesgoConcedidoCoafe,
                              tipoPrecio: null,
                            ),
                          ),
                          if (cliente.riesgoConcedidoCoafeFecha != null)
                            SelectableTextWidget(
                              dateFormatter(
                                cliente.riesgoConcedidoCoafeFecha!
                                    .toLocal()
                                    .toIso8601String(),
                              ),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _DatosRelacionados extends StatelessWidget {
  const _DatosRelacionados({required this.cliente, required this.params});

  final Cliente cliente;
  final Map<String, String> params;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobileCustomSeparators(
          separatorTitle:
              S.of(context).cliente_show_clienteDetalle_datosRelacionados,
        ),
        gapH8,
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteDireccion_titulo,
          navigationTo:
              () => context.router.push(
                ClienteDireccionesListRoute(
                  clienteId: cliente.id,
                  paisCliente: cliente.paisFiscal,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteContacto_titulo,
          navigationTo:
              () => context.router.push(
                ClienteContactoListRoute(
                  clienteId: cliente.id,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clientePrecioNeto_titulo,
          navigationTo:
              () => context.router.push(
                ClientePrecioNetoRoute(
                  clienteId: cliente.id,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteGrupoNeto_titulo,
          navigationTo:
              () => context.router.push(
                ClienteGrupoNetoRoute(
                  clienteId: cliente.id,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteDescuento_titulo,
          navigationTo:
              () => context.router.push(
                ClienteDescuentoRoute(
                  clienteId: cliente.id,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteRappel_titulo,
          navigationTo:
              () => context.router.push(
                ClienteRappelRoute(
                  clienteId: cliente.id,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteAdjunto_titulo,
          navigationTo:
              () => context.router.push(
                ClienteAdjuntoRoute(
                  clienteId: cliente.id,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
        gapH8,
      ],
    );
  }
}

class _Consultas extends StatelessWidget {
  const _Consultas({required this.cliente, required this.params});

  final Cliente cliente;
  final Map<String, String> params;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobileCustomSeparators(
          separatorTitle: S.of(context).cliente_show_clienteDetalle_consultas,
        ),
        gapH8,
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteVentasMes_titulo,
          navigationTo:
              () => context.router.push(
                ClienteVentasMesRoute(
                  clienteId: cliente.id,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteVentasArticulo_titulo,
          navigationTo:
              () => context.router.push(
                ClienteVentasArticuloRoute(
                  clienteId: cliente.id,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteFacturasPendientes_titulo,
          navigationTo:
              () => context.router.push(
                ClientePagoPendienteRoute(
                  clienteId: cliente.id,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clientePedidos_titulo,
          navigationTo:
              () => context.router.push(
                ClientePedidosRoute(
                  clienteId: cliente.id,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteDevolucion_titulo,
          navigationTo:
              () => context.router.push(
                ClienteDevolucionRoute(
                  clienteId: cliente.id,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteVisitas_titulo,
          navigationTo:
              () => context.router.push(
                ClienteVisitasRoute(
                  clienteId: cliente.id,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).ultimosPrecios_titulo,
          navigationTo:
              () => context.router.push(
                ClienteUltimosPreciosRoute(
                  clienteId: cliente.id,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteArticulosTop_titulo,
          navigationTo:
              () => context.router.push(
                ClienteArticulosTopListRoute(
                  clienteId: cliente.id,
                  nombreCliente: cliente.nombreCliente,
                ),
              ),
        ),
      ],
    );
  }
}
