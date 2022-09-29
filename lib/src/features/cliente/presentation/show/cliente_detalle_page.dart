import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/chip_container.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/mobile_custom_separatos.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/async_value_widget.dart';
import '../../../../core/presentation/common_widgets/column_field_text_detail.dart';
import '../../../../core/presentation/common_widgets/datos_extra_row.dart';

import '../../../../core/routing/app_router.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteDetallePage extends StatelessWidget {
  const ClienteDetallePage({super.key, required this.clienteId});

  final String clienteId;

  @override
  Widget build(BuildContext context) {
    final params = {'clienteId': clienteId};
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).cliente_show_clienteDetalle_titulo),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final articuloValue = ref.watch(clienteProvider(clienteId));
          return AsyncValueWidget<Cliente>(
            value: articuloValue,
            data: (cliente) => ListView(
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
            children: [
              if (cliente.nombreCliente != null)
                Flexible(
                  child: Text(
                    '#${cliente.id} ${cliente.nombreCliente!}',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              if (cliente.clientePotencial ?? false)
                ChipContainer(
                    text: getClienteEstadoPotencialInLocalLanguage(
                        estadoPotencial: cliente.clienteEstadoPotencial),
                    color: Theme.of(context).colorScheme.errorContainer),
            ],
          ),
          gapH8,
          if (cliente.nombreFiscal != null)
            Text(
              cliente.nombreFiscal!,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          gapH4,
          if (cliente.direccionFiscal1 != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cliente.direccionFiscal1!,
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).textTheme.caption?.color),
                      ),
                      Text(
                        formatCodigoPostalAndPoblacion(
                          codigoPostal: cliente.codigoPostalFiscal,
                          poblacion: cliente.poblacionFiscal,
                        ),
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).textTheme.caption?.color),
                      ),
                      Text(
                        formatProvinciaAndPais(
                            province: cliente.provinciaFiscal,
                            pais: cliente.paisFiscal),
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).textTheme.caption?.color),
                      )
                    ],
                  ),
                ),
                if (cliente.latitudFiscal != null &&
                    cliente.longitudFiscal != null)
                  gapW8,
                if (cliente.latitudFiscal != null &&
                    cliente.longitudFiscal != null)
                  IconButton(
                    onPressed: () => navigateToGoogleMapsAddress(
                      cliente.nombreFiscal,
                      cliente.latitudFiscal,
                      cliente.longitudFiscal,
                    ),
                    icon: const Icon(MdiIcons.googleMaps),
                  )
              ],
            ),
          gapH8,
          if (cliente.nif != null)
            ColumnFieldTextDetalle(
                fieldTitleValue: S.of(context).cliente_show_clienteDetalle_nif,
                value: cliente.nif!),
          if (cliente.centralCompras != null)
            ColumnFieldTextDetalle(
                fieldTitleValue:
                    S.of(context).cliente_show_clienteDetalle_centralCompras,
                value: cliente.centralCompras!),
        ],
      ),
    );
  }

  void navigateToGoogleMapsAddress(
      String? nombreFiscal, double? latitude, double? longitude) async {
    if (latitude != null && longitude != null) {
      final isAvailable = await MapLauncher.isMapAvailable(MapType.google);
      if (isAvailable ?? false) {
        await MapLauncher.showMarker(
          mapType: MapType.google,
          coords: Coords(latitude, longitude),
          title: nombreFiscal ?? '',
        );
      } else {
        final isAvailable = await MapLauncher.isMapAvailable(MapType.apple);
        if (isAvailable ?? false) {
          await MapLauncher.showMarker(
            mapType: MapType.apple,
            coords: Coords(latitude, longitude),
            title: nombreFiscal ?? '',
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
            separatorTitle: S.of(context).cliente_show_clienteDetalle_analisis),
        gapH4,
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).cliente_show_clienteDetalle_ventas,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Theme.of(context).textTheme.caption!.color),
              ),
              gapH8,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (cliente.ventasAnyoActual != null)
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                              S
                                  .of(context)
                                  .cliente_show_clienteDetalle_anoActual,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color)),
                          Text(
                            formatPrecios(
                                precio: cliente.ventasAnyoActual!,
                                tipoPrecio: null),
                          ),
                        ],
                      ),
                    ),
                  if (cliente.ventasAnyoAnterior != null)
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                              S
                                  .of(context)
                                  .cliente_show_clienteDetalle_anoAnterior,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color)),
                          Text(
                            formatPrecios(
                                precio: cliente.ventasAnyoAnterior!,
                                tipoPrecio: null),
                          ),
                        ],
                      ),
                    ),
                  if (cliente.ventasHaceDosAnyos != null)
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                              S
                                  .of(context)
                                  .cliente_show_clienteDetalle_hace2Anos,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color)),
                          Text(
                            formatPrecios(
                                precio: cliente.ventasHaceDosAnyos!,
                                tipoPrecio: null),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              if (cliente.margenAnyoActual != null &&
                  cliente.margenAnyoAnterior != null &&
                  cliente.margenHaceDosAnyos != null)
                const Divider(),
              Text(
                S.of(context).cliente_show_clienteDetalle_margen,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Theme.of(context).textTheme.caption!.color),
              ),
              gapH8,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (cliente.margenAnyoActual != null)
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                              S
                                  .of(context)
                                  .cliente_show_clienteDetalle_anoActual,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color)),
                          Text(
                            '${numberFormatDecimal(cliente.margenAnyoActual!)}%',
                          ),
                        ],
                      ),
                    ),
                  if (cliente.margenAnyoAnterior != null)
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                              S
                                  .of(context)
                                  .cliente_show_clienteDetalle_anoAnterior,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color)),
                          Text(
                            '${numberFormatDecimal(cliente.margenAnyoAnterior!)}%',
                          ),
                        ],
                      ),
                    ),
                  if (cliente.margenHaceDosAnyos != null)
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                              S
                                  .of(context)
                                  .cliente_show_clienteDetalle_hace2Anos,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color)),
                          Text(
                            '${numberFormatDecimal(cliente.margenHaceDosAnyos!)}%',
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              if (cliente.porcentajeGarantias != null &&
                  cliente.porcentajeAbonos != null)
                const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (cliente.porcentajeGarantias != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_porcentajeGarantias,
                          value: (cliente.porcentajeGarantias != null)
                              ? '${numberFormatDecimal(cliente.porcentajeGarantias!)}%'
                              : ''),
                    ),
                  if (cliente.porcentajeAbonos != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_porcentajeAbonos,
                          value: (cliente.porcentajeAbonos != null)
                              ? '${numberFormatDecimal(cliente.porcentajeAbonos!)}%'
                              : ''),
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
                S.of(context).cliente_show_clienteDetalle_preciosYFormaDePago),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (cliente.divisa != null)
                ColumnFieldTextDetalle(
                    fieldTitleValue:
                        S.of(context).cliente_show_clienteDetalle_divisa,
                    value: cliente.divisa?.descripcion),
              if (cliente.tarifaDescripcion != null) gapH4,
              if (cliente.tarifaDescripcion != null)
                ColumnFieldTextDetalle(
                    fieldTitleValue:
                        S.of(context).cliente_show_clienteDetalle_tarifa,
                    value: cliente.tarifaDescripcion ?? ''),
              if (cliente.descuentoGeneral != null) gapH4,
              if (cliente.descuentoGeneral != null)
                ColumnFieldTextDetalle(
                    fieldTitleValue: S
                        .of(context)
                        .cliente_show_clienteDetalle_descuentoGeneral,
                    value: cliente.descripcionDescuentoGeneral!),
              gapH4,
              ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S.of(context).cliente_show_clienteDetalle_descuentoPP,
                  value:
                      '${numberFormatDecimal(cliente.descuentoProntoPago)}%'),
              gapH4,
              ColumnFieldTextDetalle(
                  fieldTitleValue: S
                      .of(context)
                      .cliente_show_clienteDetalle_metodoCalculoPrecio,
                  value: getTipoCalculoPrecioDescripcion(
                      context: context,
                      tipoCalucloPrecio: cliente.tipoCalucloPrecio)),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (cliente.plazoDeCobro != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_plazoDeCobro,
                          value: getPlazoCorboInLocalLanguage(
                              plazoDeCobro: cliente.plazoDeCobro!)),
                    ),
                  if (cliente.metodoDeCobro != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                        fieldTitleValue: S
                            .of(context)
                            .cliente_show_clienteDetalle_metodoDeCobro,
                        value: getMetodoCobroInLocalLanguage(
                            metodoDeCobro: cliente.metodoDeCobro!),
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

class _ClienteRiesgosContainer extends StatelessWidget {
  const _ClienteRiesgosContainer({required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MobileCustomSeparators(
            separatorTitle: S.of(context).cliente_show_clienteDetalle_riesgos),
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
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      color: (cliente.riesgoActual >
                                              cliente.riesgoConcedido!)
                                          ? Theme.of(context).colorScheme.error
                                          : Theme.of(context)
                                              .textTheme
                                              .caption!
                                              .color,
                                    ),
                          ),
                          Text(
                            formatPrecios(
                                precio: cliente.riesgoActual, tipoPrecio: null),
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
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color)),
                          Text(
                            formatPrecios(
                                precio: cliente.riesgoPendienteCobroVencido!,
                                tipoPrecio: null),
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
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color)),
                          Text(
                            formatPrecios(
                                precio: cliente.riesgoPendienteCobroNoVencido!,
                                tipoPrecio: null),
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
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color)),
                          Text(
                            formatPrecios(
                                precio: cliente.riesgoPendienteServir!,
                                tipoPrecio: null),
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
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color)),
                          Text(
                            formatPrecios(
                                precio: cliente.riesgoPendienteFacturar!,
                                tipoPrecio: null),
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
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                        color: Theme.of(context)
                                            .textTheme
                                            .caption!
                                            .color)),
                            Text(
                              formatPrecios(
                                  precio: cliente.riesgoConcedidoInterno,
                                  tipoPrecio: null),
                            ),
                          ],
                        ),
                      gapH12,
                      Column(
                        children: [
                          Text('JBM',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color)),
                          Text(
                            formatPrecios(
                                precio: cliente.riesgoConcedidoInterno,
                                tipoPrecio: null),
                          ),
                          if (cliente.riesgoConcedidoInternoDate != null)
                            Text(
                              dateFormatter(cliente.riesgoConcedidoInternoDate!
                                  .toLocal()
                                  .toIso8601String()),
                              style: Theme.of(context).textTheme.caption,
                            ),
                        ],
                      ),
                      gapH8,
                      Column(
                        children: [
                          Text('COFACE',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color)),
                          Text(
                            formatPrecios(
                                precio: cliente.riesgoConcedidoCoafe,
                                tipoPrecio: null),
                          ),
                          if (cliente.riesgoConcedidoCoafeFecha != null)
                            Text(
                              dateFormatter(cliente.riesgoConcedidoCoafeFecha!
                                  .toLocal()
                                  .toIso8601String()),
                              style: Theme.of(context).textTheme.caption,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
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
                S.of(context).cliente_show_clienteDetalle_datosRelacionados),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteDireccion_titulo,
          navigationTo: () => context.goNamed(
            AppRoutes.clientedirecciones.name,
            params: params,
            extra: cliente.nombreCliente,
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteContacto_titulo,
          navigationTo: () => context.goNamed(
            AppRoutes.clientecontactos.name,
            params: params,
            extra: cliente.nombreCliente,
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clientePrecioNeto_titulo,
          navigationTo: () => context.goNamed(
            AppRoutes.clientepreciosnetos.name,
            params: params,
            extra: cliente.nombreCliente,
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteGrupoNeto_titulo,
          navigationTo: () => context.goNamed(
            AppRoutes.clientegruposnetos.name,
            params: params,
            extra: cliente.nombreCliente,
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteDescuento_titulo,
          navigationTo: () => context.goNamed(
            AppRoutes.clientedescuentos.name,
            params: params,
            extra: cliente.nombreCliente,
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteRappel_titulo,
          navigationTo: () => context.goNamed(
            AppRoutes.clienterappels.name,
            params: params,
            extra: cliente.nombreCliente,
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteAdjunto_titulo,
          navigationTo: () => context.goNamed(
            AppRoutes.clienteadjuntos.name,
            params: params,
            extra: cliente.nombreCliente,
          ),
        ),
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
            separatorTitle:
                S.of(context).cliente_show_clienteDetalle_consultas),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteVentasMes_titulo,
          navigationTo: () => context.goNamed(
            AppRoutes.clienteventasmes.name,
            params: params,
            extra: cliente.nombreCliente,
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteVentasArticulo_titulo,
          navigationTo: () => context.goNamed(
            AppRoutes.clienteventasarticulo.name,
            params: params,
            extra: cliente.nombreCliente,
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteFacturasPendientes_titulo,
          navigationTo: () => context.goNamed(
            AppRoutes.clientefactpendientes.name,
            params: params,
            extra: cliente.nombreCliente,
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteArticulosTop_titulo,
          navigationTo: () => context.goNamed(
            AppRoutes.clientetoparticulos.name,
            params: params,
            extra: cliente.nombreCliente,
          ),
        ),
      ],
    );
  }
}
