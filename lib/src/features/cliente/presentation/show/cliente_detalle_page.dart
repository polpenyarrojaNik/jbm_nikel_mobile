import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/last_sync_date_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/mobile_custom_separatos.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/cliente_direccion_container.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/async_value_widget.dart';
import '../../../../core/presentation/common_widgets/buttons_row_bar_widget.dart';
import '../../../../core/presentation/common_widgets/column_field_text_detail.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
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
  const ClienteDetallePage({Key? key, required this.clienteId})
      : super(key: key);

  final String clienteId;

  @override
  Widget build(BuildContext context) {
    final params = {'clienteId': clienteId};
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cliente detalle'),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final clienteValue = ref.watch(clienteProvider(clienteId));
          final clienteLasySyncValue = ref.watch(clienteUltimaSyncProvider);

          return AsyncValueWidget<Cliente>(
            value: clienteValue,
            data: (cliente) => DefaultTabController(
              length: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ButtonsRowBarWidget(
                    textButtonsList: [
                      TextButtonWidget(
                          titleText: 'Vtas. Mes',
                          entityId: clienteId,
                          appRouteValue: AppRoute.clientesalesmes,
                          params: params),
                      TextButtonWidget(
                          titleText: 'Vtas. Art',
                          entityId: clienteId,
                          appRouteValue: AppRoute.clientesalesarticulo,
                          params: params),
                      TextButtonWidget(
                          titleText: 'Fact. Pendientes',
                          entityId: clienteId,
                          appRouteValue: AppRoute.clientependingpayment,
                          params: params),
                      TextButtonWidget(
                        titleText: 'Top 150',
                        entityId: clienteId,
                        appRouteValue: AppRoute.clientetoparticulos,
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
                          child: clienteLasySyncValue.when(
                              data: (ultimaSyncDate) => UltimaSyncDateWidget(
                                  ultimaSyncDate: ultimaSyncDate),
                              error: (e, _) => ErrorMessageWidget(e.toString()),
                              loading: () => const ProgressIndicatorWidget()),
                        ),
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
                              Tab(text: '¿?'),
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
                          const Text('¿Descuento Tipo Entrada?'),
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
  const _ClienteInfoContainer({super.key, required this.cliente});

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
        const MobileCustomSeparators(separatorTitle: 'Datos Generales'),
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
                          fieldTitleValue: 'Nombre fiscal',
                          value: cliente.nombreFiscal)
                      : RowFieldTextDetalle(
                          fieldTitleValue: 'Nombre fiscal',
                          value: cliente.nombreFiscal),
                  const SizedBox(height: 2),
                  (cliente.direccionFiscal1 != null &&
                          cliente.direccionFiscal1!.length > 35)
                      ? ColumnFieldTextDetalle(
                          fieldTitleValue: 'Dirección',
                          value: cliente.direccionFiscal1 ?? '')
                      : RowFieldTextDetalle(
                          fieldTitleValue: 'Dirección',
                          value: cliente.direccionFiscal1 ?? ''),
                  const SizedBox(height: 2),
                  (cliente.direccionFiscal2 != null &&
                          cliente.direccionFiscal2!.length > 35)
                      ? ColumnFieldTextDetalle(
                          fieldTitleValue: 'Dirección2',
                          value: cliente.direccionFiscal2 ?? '')
                      : RowFieldTextDetalle(
                          fieldTitleValue: 'Dirección2',
                          value: cliente.direccionFiscal2 ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Código fiscal',
                      value: cliente.codigoPostalFiscal ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Población',
                      value: cliente.poblacionFiscal ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Provincia',
                      value: cliente.provinciaFiscal ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'País',
                      value: cliente.paisFiscal?.descripcion ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'NIF', value: cliente.nif ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Latitud',
                      value: cliente.latitudFiscal?.toString() ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Longitud',
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
                      fieldTitleValue: 'Venta Año Actual',
                      value: cliente.ventasAnyoActual?.toString() ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Venta Año Anterior',
                      value: cliente.ventasAnyoAnterior?.toString() ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Ventas Hace 2 Años',
                      value: cliente.ventasHaceDosAnyos?.toString() ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Porcentaje Garantias',
                      value: (cliente.porcentajeGarantias != null)
                          ? '${cliente.porcentajeGarantias?.toString()}%'
                          : ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Margen Año Actual',
                      value: (cliente.margenAnyoActual != null)
                          ? '${cliente.margenAnyoActual?.toString()}%'
                          : ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Margen Año Anterior',
                      value: (cliente.margenAnyoAnterior != null)
                          ? '${cliente.margenAnyoAnterior?.toString()}%'
                          : ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Margen Hace 2 Años',
                      value: (cliente.margenHaceDosAnyos != null)
                          ? '${cliente.margenHaceDosAnyos?.toString()}%'
                          : ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Porcentaje Abonos',
                      value: (cliente.porcentajeAbonos != null)
                          ? '${cliente.porcentajeAbonos?.toString()}%'
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
                      fieldTitleValue: 'Central compras',
                      value: cliente.centralCompras ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Web', value: cliente.urlWeb ?? ''),
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
  const ClientePricesAndOthersData({Key? key, required this.cliente})
      : super(key: key);

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MobileCustomSeparators(separatorTitle: 'Precios & Otros'),
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
                      fieldTitleValue: 'Divisa',
                      value: cliente.divisa?.descripcion ?? ''),
                  (cliente.tarifaDescripcion != null &&
                          cliente.tarifaDescripcion!.length > 35)
                      ? ColumnFieldTextDetalle(
                          fieldTitleValue: 'Tarifa',
                          value: cliente.tarifaDescripcion ?? '')
                      : RowFieldTextDetalle(
                          fieldTitleValue: 'Tarifa',
                          value: cliente.tarifaDescripcion ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Descuento general',
                      value: cliente.descripcionDescuentoGeneral ?? ''),
                  const RowFieldTextDetalle(
                      fieldTitleValue: 'Bonificación', value: '¿?'),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Método cálculo precios',
                      value: cliente.tipoCalucloPrecio),
                  const RowFieldTextDetalle(
                      fieldTitleValue: 'Ritmo Visitaas', value: '¿?'),
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
  const ClienteFacturationDataContainer({Key? key, required this.cliente})
      : super(key: key);

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MobileCustomSeparators(separatorTitle: 'Facturación'),
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
                      fieldTitleValue: 'Plazo de Cobro',
                      value: cliente.plazoDeCobro?.descripcion ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Método de Cobro',
                      value: cliente.metodoDeCobro?.descripcion ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Descuento P.P',
                      value: cliente.descuentoProntoPago.toString()),
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
  const ClienteRemarksContainer({Key? key, required this.cliente})
      : super(key: key);

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ClienteRiskContainer extends StatelessWidget {
  const ClienteRiskContainer({Key? key, required this.cliente})
      : super(key: key);

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MobileCustomSeparators(separatorTitle: 'Riesgos'),
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
                      fieldTitleValue: 'Concedido JBM',
                      value: cliente.riesgoConcedidoInterno.toString()),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Concedido Fecha',
                      value: (cliente.riesgoConcedidoInternoDate != null)
                          ? dateFormatter(cliente.riesgoConcedidoInternoDate!
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
                      fieldTitleValue: 'Concedido COFACE',
                      value: cliente.riesgoConcedidoCoafe.toString()),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Fecha COFACE',
                      value: (cliente.riesgoConcedidoCoafeFecha != null)
                          ? cliente.riesgoConcedidoCoafeFecha!.toIso8601String()
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
                  const RowFieldTextDetalle(
                      fieldTitleValue: 'Riesgo Actual', value: '¿?'),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Riesgo Concedido',
                      value: cliente.riesgoConcedido?.toString() ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Pdte. Cobro Vencido',
                      value: cliente.riesgoPendienteCobroVencido?.toString() ??
                          ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Pdte. Cobro No vencido',
                      value:
                          cliente.riesgoPendienteCobroNoVencido?.toString() ??
                              ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Pdte. Servir',
                      value: cliente.riesgoPendienteServir?.toString() ?? ''),
                  RowFieldTextDetalle(
                      fieldTitleValue: 'Riesgo Concedido',
                      value: cliente.riesgoPendienteFacturar?.toString() ?? ''),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
