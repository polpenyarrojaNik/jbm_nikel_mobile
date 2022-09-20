import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/mobile_custom_separatos.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente.dart';
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
        _ClientePreciosAndOtros(cliente: cliente),
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
      child: Card(
        // clipBehavior: Clip.hardEdge,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4), // if you need this
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Column(
          children: [
            if (cliente.centralCompras != null)
              Container(
                color: Theme.of(context)
                    .colorScheme
                    .surfaceVariant
                    .withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          cliente.centralCompras!,
                          style: Theme.of(context).textTheme.bodyText2!,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (cliente.nif != null)
                    Text(
                      cliente.nif!,
                    ),
                  if (cliente.nombreCliente != null)
                    Text(
                      cliente.nombreCliente!,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  if (cliente.nombreFiscal != null)
                    Text(
                      '#${cliente.id} ${cliente.nombreFiscal!}',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  gapH8,
                  if (cliente.direccionFiscal1 != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cliente.direccionFiscal1!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption
                                          ?.color),
                            ),
                            Text(
                              formatCodigoPostalAndPoblacion(
                                codigoPostal: cliente.codigoPostalFiscal,
                                poblacion: cliente.poblacionFiscal,
                              ),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption
                                          ?.color),
                            ),
                            Text(
                              formatProvinciaAndPais(
                                  province: cliente.provinciaFiscal,
                                  pais: cliente.paisFiscal),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption
                                          ?.color),
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(MdiIcons.googleMaps),
                        )
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (cliente.ventasAnyoActual != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                        fieldTitleValue: S
                            .of(context)
                            .cliente_show_clienteDetalle_ventasAnoActual,
                        value: numberFormatDecimal(cliente.ventasAnyoActual!),
                      ),
                    ),
                  if (cliente.ventasAnyoAnterior != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                        fieldTitleValue: S
                            .of(context)
                            .cliente_show_clienteDetalle_ventasAnoAnterior,
                        value: numberFormatDecimal(cliente.ventasAnyoAnterior!),
                      ),
                    ),
                ],
              ),
              if (cliente.ventasHaceDosAnyos != null) gapH4,
              if (cliente.ventasHaceDosAnyos != null)
                ColumnFieldTextDetalle(
                    fieldTitleValue: S
                        .of(context)
                        .cliente_show_clienteDetalle_ventasHace2Anos,
                    value: numberFormatDecimal(cliente.ventasHaceDosAnyos!)),
              if (cliente.margenAnyoActual != null &&
                  cliente.margenAnyoAnterior != null &&
                  cliente.margenHaceDosAnyos != null)
                const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (cliente.margenAnyoActual != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_margenAnoActual,
                          value: (cliente.margenAnyoActual != null)
                              ? '${numberFormatDecimal(cliente.margenAnyoActual!)}%'
                              : ''),
                    ),
                  if (cliente.margenAnyoAnterior != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_margenAnoAnterior,
                          value: (cliente.margenAnyoAnterior != null)
                              ? '${numberFormatDecimal(cliente.margenAnyoAnterior!)}%'
                              : ''),
                    ),
                ],
              ),
              if (cliente.margenHaceDosAnyos != null) gapH4,
              if (cliente.margenHaceDosAnyos != null)
                ColumnFieldTextDetalle(
                    fieldTitleValue: S
                        .of(context)
                        .cliente_show_clienteDetalle_margenHace2Anos,
                    value: (cliente.margenHaceDosAnyos != null)
                        ? '${numberFormatDecimal(cliente.margenHaceDosAnyos!)}%'
                        : ''),
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

class _ClientePreciosAndOtros extends StatelessWidget {
  const _ClientePreciosAndOtros({super.key, required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MobileCustomSeparators(
            separatorTitle:
                S.of(context).cliente_show_clienteDetalle_preciosYOtros),
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
                    value: cliente.descripcionDescuentoGeneral ?? ''),
              gapH4,
              ColumnFieldTextDetalle(
                  fieldTitleValue: S
                      .of(context)
                      .cliente_show_clienteDetalle_metodoCalculoPrecio,
                  value: cliente.tipoCalucloPrecio),
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
                          value: cliente.plazoDeCobro?.descripcion),
                    ),
                  if (cliente.metodoDeCobro != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_metodoDeCobro,
                          value: cliente.metodoDeCobro?.descripcion),
                    ),
                ],
              ),
              gapH4,
              ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S.of(context).cliente_show_clienteDetalle_descuentoPP,
                  value:
                      '${numberFormatDecimal(cliente.descuentoProntoPago)}%'),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (cliente.riesgoConcedidoInterno != 0)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                        fieldTitleValue: S
                            .of(context)
                            .cliente_show_clienteDetalle_concedidoJBM,
                        value: cliente.riesgoConcedidoInterno.toString(),
                      ),
                    ),
                  if (cliente.riesgoConcedidoInternoDate != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                        fieldTitleValue: S
                            .of(context)
                            .cliente_show_clienteDetalle_concedidoFecha,
                        value: dateFormatter(cliente.riesgoConcedidoInternoDate!
                            .toLocal()
                            .toIso8601String()),
                      ),
                    ),
                ],
              ),
              if (cliente.riesgoConcedidoCoafe != 0) const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (cliente.riesgoConcedidoCoafe != 0)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_concedidoCOFACE,
                          value: numberFormatDecimal(
                              cliente.riesgoConcedidoCoafe)),
                    ),
                  if (cliente.riesgoConcedidoCoafeFecha != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_fechaCOFACE,
                          value: cliente.riesgoConcedidoCoafeFecha!
                              .toLocal()
                              .toIso8601String()),
                    ),
                ],
              ),
              if (cliente.riesgoConcedido != null &&
                  cliente.riesgoConcedido != 0)
                const Divider(),
              if (cliente.riesgoConcedido != null &&
                  cliente.riesgoConcedido != 0)
                ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S.of(context).cliente_show_clienteDetalle_riesgoConcedido,
                  value: numberFormatDecimal(cliente.riesgoConcedido!),
                ),
              if ((cliente.riesgoPendienteCobroVencido != null &&
                      cliente.riesgoPendienteCobroVencido != 0) ||
                  (cliente.riesgoPendienteCobroNoVencido != null &&
                      cliente.riesgoPendienteCobroNoVencido != 0) ||
                  (cliente.riesgoPendienteServir != null &&
                      cliente.riesgoPendienteServir != 0) ||
                  (cliente.riesgoPendienteFacturar != null &&
                      cliente.riesgoPendienteFacturar != 0))
                const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (cliente.riesgoPendienteCobroVencido != null &&
                      cliente.riesgoPendienteCobroVencido != 0)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_pdteCobroVencido,
                          value: numberFormatDecimal(
                              cliente.riesgoPendienteCobroVencido!)),
                    ),
                  if (cliente.riesgoPendienteCobroNoVencido != null &&
                      cliente.riesgoPendienteCobroNoVencido != 0)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_pdteCobroNoVencido,
                          value: numberFormatDecimal(
                              cliente.riesgoPendienteCobroNoVencido!)),
                    ),
                ],
              ),
              if ((cliente.riesgoPendienteServir != null &&
                      cliente.riesgoPendienteServir != 0) ||
                  (cliente.riesgoPendienteFacturar != null &&
                      cliente.riesgoPendienteFacturar != 0))
                gapH4,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (cliente.riesgoPendienteServir != null &&
                      cliente.riesgoPendienteServir != 0)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_pdteServir,
                          value: numberFormatDecimal(
                              cliente.riesgoPendienteServir!)),
                    ),
                  if (cliente.riesgoPendienteFacturar != null &&
                      cliente.riesgoPendienteFacturar != 0)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_pdteFacturar,
                          value: numberFormatDecimal(
                              cliente.riesgoPendienteFacturar!)),
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
          title: S.of(context).cliente_show_clienteDetalleVentasArticulo_titulo,
          navigationTo: () => context.goNamed(
            AppRoutes.clienteventasarticulo.name,
            params: params,
            extra: cliente.nombreCliente,
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteDetalle_factPendientes,
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
