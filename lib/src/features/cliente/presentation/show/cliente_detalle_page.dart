import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/mobile_custom_separatos.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/cliente_direccion_container.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/async_value_widget.dart';
import '../../../../core/presentation/common_widgets/buttons_row_bar_widget.dart';
import '../../../../core/presentation/common_widgets/column_field_text_detail.dart';
import '../../../../core/presentation/common_widgets/row_field_text_detail.dart';
import '../../../../core/presentation/common_widgets/text_button_widget.dart';
import '../../../../core/routing/app_router.dart';
import '../../infrastructure/cliente_repository.dart';
import 'cliente_adjunto_container.dart';
import 'cliente_contacto_container.dart';
import 'cliente_descuento_container.dart';
import 'cliente_grupo_neto_container.dart';
import 'cliente_precio_neto_container.dart.dart';
import 'cliente_rappel_container.dart';

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
          final clienteValue = ref.watch(clienteProvider(clienteId));

          return AsyncValueWidget<Cliente>(
            value: clienteValue,
            data: (cliente) => DefaultTabController(
              length: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ButtonsRowBarWidget(
                    textButtonsList: [
                      TextButtonWidget(
                          titleText:
                              S.of(context).cliente_show_clienteDetalle_vtasMes,
                          entityId: clienteId,
                          appRouteValue: AppRoutes.clientesalesmes,
                          params: params),
                      TextButtonWidget(
                          titleText:
                              S.of(context).cliente_show_clienteDetalle_vtasArt,
                          entityId: clienteId,
                          appRouteValue: AppRoutes.clientesalesarticulo,
                          params: params),
                      TextButtonWidget(
                          titleText: S
                              .of(context)
                              .cliente_show_clienteDetalle_factPendientes,
                          entityId: clienteId,
                          appRouteValue: AppRoutes.clientependingpayment,
                          params: params),
                      TextButtonWidget(
                        titleText:
                            S.of(context).cliente_show_clienteDetalle_top150,
                        entityId: clienteId,
                        appRouteValue: AppRoutes.clientetoparticulos,
                        params: params,
                      ),
                    ],
                  ),
                  const Divider(),
                  Expanded(
                    child: NestedScrollView(
                      scrollDirection: Axis.vertical,
                      headerSliverBuilder: (context, innerBoxIsScrolled) => [
                        SliverToBoxAdapter(
                          child: _ClienteInfoContainer(cliente: cliente),
                        ),
                        const SliverToBoxAdapter(
                          child: TabBar(
                            labelColor: Colors.black,
                            tabs: [
                              Tab(icon: Icon(Icons.local_shipping, size: 16)),
                              Tab(icon: Icon(Icons.person, size: 16)),
                              Tab(icon: Icon(Icons.money, size: 16)),
                              Tab(icon: Icon(Icons.group, size: 16)),
                              Tab(
                                  icon:
                                      Icon(Icons.discount_outlined, size: 16)),
                              Tab(icon: Icon(Icons.local_shipping, size: 16)),
                              Tab(icon: Icon(Icons.attach_file, size: 16)),
                            ],
                          ),
                        ),
                      ],
                      body: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        viewportFraction: 1,
                        children: [
                          ClienteDireccionesContainer(clienteId: clienteId),
                          ClienteContactoContainer(clienteId: clienteId),
                          ClientePrecioNetoContainer(clienteId: clienteId),
                          ClienteGrupoNetoContainer(clienteId: clienteId),
                          ClienteDescuentoContainer(clienteId: clienteId),
                          ClienteRappelContainer(clienteId: clienteId),
                          ClienteAdjuntoContainer(clienteId: clienteId),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '#${cliente.id} ${cliente.nombreCliente}',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        ClienteGeneralData(cliente: cliente),
        ClientePricesAndOthersData(cliente: cliente),
        ClienteFacturationDataContainer(cliente: cliente),
        ClienteRemarksContainer(cliente: cliente),
        ClienteRiskContainer(cliente: cliente),
      ],
    );
  }
}

class ClienteGeneralData extends StatelessWidget {
  const ClienteGeneralData({super.key, required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MobileCustomSeparators(
            separatorTitle:
                S.of(context).cliente_show_clienteDetalle_datosGenerales),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), // if you need this
              side: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (cliente.nombreFiscal != null &&
                          cliente.nombreFiscal!.length > 35)
                      ? ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_nombreFiscal,
                          value: cliente.nombreFiscal)
                      : RowFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_nombreFiscal,
                          value: cliente.nombreFiscal),
                  const SizedBox(height: 2),
                  (cliente.direccionFiscal1 != null &&
                          cliente.direccionFiscal1!.length > 35)
                      ? ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_direccion,
                          value: cliente.direccionFiscal1 ?? '')
                      : RowFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_direccion,
                          value: cliente.direccionFiscal1 ?? ''),
                  const SizedBox(height: 2),
                  (cliente.direccionFiscal2 != null &&
                          cliente.direccionFiscal2!.length > 35)
                      ? ColumnFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_direccion2,
                          value: cliente.direccionFiscal2 ?? '')
                      : RowFieldTextDetalle(
                          fieldTitleValue: S
                              .of(context)
                              .cliente_show_clienteDetalle_direccion2,
                          value: cliente.direccionFiscal2 ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_codigoPostal,
                      value: cliente.codigoPostalFiscal ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue:
                          S.of(context).cliente_show_clienteDetalle_poblacion,
                      value: cliente.poblacionFiscal ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue:
                          S.of(context).cliente_show_clienteDetalle_provincia,
                      value: cliente.provinciaFiscal ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue:
                          S.of(context).cliente_show_clienteDetalle_pais,
                      value: cliente.paisFiscal?.descripcion ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue:
                          S.of(context).cliente_show_clienteDetalle_nif,
                      value: cliente.nif ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue:
                          S.of(context).cliente_show_clienteDetalle_latitud,
                      value: cliente.latitudFiscal?.toString() ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue:
                          S.of(context).cliente_show_clienteDetalle_longitud,
                      value: cliente.longitudFiscal?.toString() ?? ''),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), // if you need this
              side: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_ventasAnoActual,
                      value: numberFormatDecimal(cliente.ventasAnyoActual!)),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                    fieldTitleValue: S
                        .of(context)
                        .cliente_show_clienteDetalle_ventasAnoAnterior,
                    value: numberFormatDecimal(cliente.ventasAnyoAnterior!),
                  ),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_ventasHace2Anos,
                      value: numberFormatDecimal(cliente.ventasHaceDosAnyos!)),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_porcentajeGarantias,
                      value: (cliente.porcentajeGarantias != null)
                          ? '${numberFormatDecimal(cliente.porcentajeGarantias!)}%'
                          : ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_margenAnoActual,
                      value: (cliente.margenAnyoActual != null)
                          ? '${numberFormatDecimal(cliente.margenAnyoActual!)}%'
                          : ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_margenAnoAnterior,
                      value: (cliente.margenAnyoAnterior != null)
                          ? '${numberFormatDecimal(cliente.margenAnyoAnterior!)}%'
                          : ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_margenHace2Anos,
                      value: (cliente.margenHaceDosAnyos != null)
                          ? '${numberFormatDecimal(cliente.margenHaceDosAnyos!)}%'
                          : ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_porcentajeAbonos,
                      value: (cliente.porcentajeAbonos != null)
                          ? '${numberFormatDecimal(cliente.porcentajeAbonos!)}%'
                          : ''),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), // if you need this
              side: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_centralCompras,
                      value: cliente.centralCompras ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue:
                          S.of(context).cliente_show_clienteDetalle_web,
                      value: cliente.urlWeb ?? ''),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}

class ClientePricesAndOthersData extends StatelessWidget {
  const ClientePricesAndOthersData({super.key, required this.cliente});

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
          padding: const EdgeInsets.all(8),
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), // if you need this
              side: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowFieldTextDetalle(
                      fieldTitleValue:
                          S.of(context).cliente_show_clienteDetalle_divisa,
                      value: cliente.divisa?.descripcion ?? ''),
                  (cliente.tarifaDescripcion != null &&
                          cliente.tarifaDescripcion!.length > 35)
                      ? ColumnFieldTextDetalle(
                          fieldTitleValue:
                              S.of(context).cliente_show_clienteDetalle_tarifa,
                          value: cliente.tarifaDescripcion ?? '')
                      : RowFieldTextDetalle(
                          fieldTitleValue:
                              S.of(context).cliente_show_clienteDetalle_tarifa,
                          value: cliente.tarifaDescripcion ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_descuentoGeneral,
                      value: cliente.descripcionDescuentoGeneral ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_metodoCalculoPrecio,
                      value: cliente.tipoCalucloPrecio),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_ritmoVisitas,
                      value: '¿?'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ClienteFacturationDataContainer extends StatelessWidget {
  const ClienteFacturationDataContainer({super.key, required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MobileCustomSeparators(
            separatorTitle:
                S.of(context).cliente_show_clienteDetalle_facturacion),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), // if you need this
              side: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_plazoDeCobro,
                      value: cliente.plazoDeCobro?.descripcion ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_metodoDeCobro,
                      value: cliente.metodoDeCobro?.descripcion ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue:
                          S.of(context).cliente_show_clienteDetalle_descuentoPP,
                      value: numberFormatDecimal(cliente.descuentoProntoPago)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ClienteRemarksContainer extends StatelessWidget {
  const ClienteRemarksContainer({super.key, required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ClienteRiskContainer extends StatelessWidget {
  const ClienteRiskContainer({super.key, required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MobileCustomSeparators(
            separatorTitle: S.of(context).cliente_show_clienteDetalle_riesgos),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), // if you need this
              side: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_concedidoJBM,
                      value: cliente.riesgoConcedidoInterno.toString()),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_concedidoFecha,
                      value: (cliente.riesgoConcedidoInternoDate != null)
                          ? dateFormatter(cliente.riesgoConcedidoInternoDate!
                              .toLocal()
                              .toIso8601String())
                          : ''),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), // if you need this
              side: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_concedidoCOFACE,
                      value: numberFormatDecimal(cliente.riesgoConcedidoCoafe)),
                  RowFieldTextDetalle(
                      fieldTitleValue:
                          S.of(context).cliente_show_clienteDetalle_fechaCOFACE,
                      value: (cliente.riesgoConcedidoCoafeFecha != null)
                          ? cliente.riesgoConcedidoCoafeFecha!
                              .toLocal()
                              .toIso8601String()
                          : ''),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), // if you need this
              side: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_riesgoActual,
                      value: '¿?'),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_riesgoConcedido,
                      value: (cliente.riesgoConcedido != null)
                          ? numberFormatDecimal(cliente.riesgoConcedido!)
                          : ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_pdteCobroVencido,
                      value: (cliente.riesgoPendienteCobroVencido != null)
                          ? numberFormatDecimal(
                              cliente.riesgoPendienteCobroVencido!)
                          : ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_pdteCobroNoVencido,
                      value: (cliente.riesgoPendienteCobroNoVencido != null)
                          ? numberFormatDecimal(
                              cliente.riesgoPendienteCobroNoVencido!)
                          : ''),
                  RowFieldTextDetalle(
                      fieldTitleValue:
                          S.of(context).cliente_show_clienteDetalle_pdteServir,
                      value: (cliente.riesgoPendienteServir != null)
                          ? numberFormatDecimal(cliente.riesgoPendienteServir!)
                          : ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: S
                          .of(context)
                          .cliente_show_clienteDetalle_pdteFacturar,
                      value: (cliente.riesgoPendienteFacturar != null)
                          ? numberFormatDecimal(
                              cliente.riesgoPendienteFacturar!)
                          : ''),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
