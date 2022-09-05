import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/last_sync_date_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/mobile_custom_separatos.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/row_field_text_detail.dart';
import 'package:jbm_nikel_mobile/src/features/customer/domain/customer.dart';
import 'package:jbm_nikel_mobile/src/features/customer/presentation/show/customer_address_container.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/async_value_widget.dart';
import '../../../../core/presentation/common_widgets/buttons_row_bar_widget.dart';
import '../../../../core/presentation/common_widgets/column_field_text_detail.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/common_widgets/text_button_widget.dart';
import '../../../../core/routing/app_router.dart';
import '../../infrastructure/customer_repository.dart';
import 'customer_attachment_container.dart';
import 'customer_contact_container.dart';
import 'customer_discount_container.dart';
import 'customer_net_group_container.dart';
import 'customer_net_price_container.dart.dart';
import 'customer_rappel_container.dart';

class CustomerDetailPage extends StatelessWidget {
  const CustomerDetailPage({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context) {
    final params = {'customerId': customerId};
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer detail'),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final customerValue = ref.watch(customerProvider(customerId));
          final customerLasySyncValue = ref.watch(customerLastSyncProvider);

          return AsyncValueWidget<Customer>(
            value: customerValue,
            data: (customer) => DefaultTabController(
              length: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ButtonsRowBarWidget(
                    textButtonsList: [
                      TextButtonWidget(
                          titleText: 'Vtas. Mes',
                          entityId: customerId,
                          appRouteValue: AppRoute.customersalesmonth,
                          params: params),
                      TextButtonWidget(
                          titleText: 'Vtas. Art',
                          entityId: customerId,
                          appRouteValue: AppRoute.customersalesarticle,
                          params: params),
                      TextButtonWidget(
                          titleText: '¿Precio Neto?',
                          entityId: customerId,
                          appRouteValue: AppRoute.customerpendingpayment,
                          params: params),
                      TextButtonWidget(
                          titleText: 'Fact. Pendientes',
                          entityId: customerId,
                          appRouteValue: AppRoute.customerpendingpayment,
                          params: params),
                      TextButtonWidget(
                          titleText: '¿Stock B2B?',
                          entityId: customerId,
                          appRouteValue: AppRoute.customerstockb2b,
                          params: params),
                      TextButtonWidget(
                        titleText: 'Top 150',
                        entityId: customerId,
                        appRouteValue: AppRoute.customertoparticles,
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
                          child: customerLasySyncValue.when(
                              data: (lastSyncDate) => LastSyncDateWidget(
                                  lastSyncDate: lastSyncDate),
                              error: (e, _) => ErrorMessageWidget(e.toString()),
                              loading: () => const ProgressIndicatorWidget()),
                        ),
                        SliverToBoxAdapter(
                          child: _CustomerInfoContainer(customer: customer),
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
                          CustomerAddressesContainer(customerId: customerId),
                          CustomerContactContainer(customerId: customerId),
                          CustomerNetPriceContainer(customerId: customerId),
                          CustomerNetGroupContainer(customerId: customerId),
                          CustomerDiscountContainer(customerId: customerId),
                          const Text('¿Descuento Tipo Entrada?'),
                          CustomerRappelContainer(customerId: customerId),
                          CustomerAttachmentContainer(customerId: customerId),
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

class _CustomerInfoContainer extends StatelessWidget {
  const _CustomerInfoContainer({Key? key, required this.customer})
      : super(key: key);

  final Customer customer;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '#${customer.id} ${customer.customerName}',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        CustomerGeneralData(customer: customer),
        CustomerPricesAndOthersData(customer: customer),
        CustomerFacturationDataContainer(customer: customer),
        CustomerRemarksContainer(customer: customer),
        CustomerRiskContainer(customer: customer),
      ],
    );
  }
}

class CustomerGeneralData extends StatelessWidget {
  const CustomerGeneralData({Key? key, required this.customer})
      : super(key: key);

  final Customer customer;

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
                  (customer.fiscalName != null &&
                          customer.fiscalName!.length > 35)
                      ? ColumnFieldTextDetail(
                          fieldTitleValue: 'Nombre fiscal',
                          value: customer.fiscalName)
                      : RowFieldTextDetail(
                          fieldTitleValue: 'Nombre fiscal',
                          value: customer.fiscalName),
                  const SizedBox(height: 2),
                  (customer.fiscalAddress1 != null &&
                          customer.fiscalAddress1!.length > 35)
                      ? ColumnFieldTextDetail(
                          fieldTitleValue: 'Dirección',
                          value: customer.fiscalAddress1 ?? '')
                      : RowFieldTextDetail(
                          fieldTitleValue: 'Dirección',
                          value: customer.fiscalAddress1 ?? ''),
                  const SizedBox(height: 2),
                  (customer.fiscalAddress2 != null &&
                          customer.fiscalAddress2!.length > 35)
                      ? ColumnFieldTextDetail(
                          fieldTitleValue: 'Dirección2',
                          value: customer.fiscalAddress2 ?? '')
                      : RowFieldTextDetail(
                          fieldTitleValue: 'Dirección2',
                          value: customer.fiscalAddress2 ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Código fiscal',
                      value: customer.fiscalZipCode ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Población',
                      value: customer.fiscalCity ?? ''),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Provincia',
                      value: customer.fiscalState ?? ''),
                  RowFieldTextDetail(
                      fieldTitleValue: 'País',
                      value: customer.fiscalCountry?.description ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetail(
                      fieldTitleValue: 'NIF', value: customer.nif ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Latitud',
                      value: customer.fiscalLatitude?.toString() ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Longitud',
                      value: customer.fiscalLongitude?.toString() ?? ''),
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
                  RowFieldTextDetail(
                      fieldTitleValue: 'Venta Año Actual',
                      value: customer.currentYearSales?.toString() ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Venta Año Anterior',
                      value: customer.previousYearSales?.toString() ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Ventas Hace 2 Años',
                      value: customer.salesTwoYearsAgo?.toString() ?? ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Porcentaje Garantias',
                      value: (customer.warrantyPercent != null)
                          ? '${customer.warrantyPercent?.toString()}%'
                          : ''),
                  const SizedBox(height: 2),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Margen Año Actual',
                      value: (customer.currentYearMargin != null)
                          ? '${customer.currentYearMargin?.toString()}%'
                          : ''),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Margen Año Anterior',
                      value: (customer.previousYearMargin != null)
                          ? '${customer.previousYearMargin?.toString()}%'
                          : ''),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Margen Hace 2 Años',
                      value: (customer.marginTwoYearsAgo != null)
                          ? '${customer.marginTwoYearsAgo?.toString()}%'
                          : ''),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Porcentaje Abonos',
                      value: (customer.paymentPercent != null)
                          ? '${customer.paymentPercent?.toString()}%'
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
                  RowFieldTextDetail(
                      fieldTitleValue: 'Central compras',
                      value: customer.shoppingCenterName ?? ''),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Web', value: customer.urlWebsite ?? ''),
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

class CustomerPricesAndOthersData extends StatelessWidget {
  const CustomerPricesAndOthersData({Key? key, required this.customer})
      : super(key: key);

  final Customer customer;

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
                  RowFieldTextDetail(
                      fieldTitleValue: 'Divisa',
                      value: customer.divisa?.description ?? ''),
                  (customer.rateDescription != null &&
                          customer.rateDescription!.length > 35)
                      ? ColumnFieldTextDetail(
                          fieldTitleValue: 'Tarifa',
                          value: customer.rateDescription ?? '')
                      : RowFieldTextDetail(
                          fieldTitleValue: 'Tarifa',
                          value: customer.rateDescription ?? ''),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Descuento general',
                      value: customer.generalDiscountDescription ?? ''),
                  const RowFieldTextDetail(
                      fieldTitleValue: 'Bonificación', value: '¿?'),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Método cálculo precios',
                      value: customer.priceCalculationType),
                  const RowFieldTextDetail(
                      fieldTitleValue: 'Ritmo Visitas', value: '¿?'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomerFacturationDataContainer extends StatelessWidget {
  const CustomerFacturationDataContainer({Key? key, required this.customer})
      : super(key: key);

  final Customer customer;

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
                  RowFieldTextDetail(
                      fieldTitleValue: 'Plazo de Cobro',
                      value: customer.collectionTerm?.description ?? ''),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Método de Cobro',
                      value: customer.collectionMethod?.description ?? ''),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Descuento P.P',
                      value: customer.promptPaymentDiscount.toString()),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomerRemarksContainer extends StatelessWidget {
  const CustomerRemarksContainer({Key? key, required this.customer})
      : super(key: key);

  final Customer customer;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CustomerRiskContainer extends StatelessWidget {
  const CustomerRiskContainer({Key? key, required this.customer})
      : super(key: key);

  final Customer customer;

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
                  RowFieldTextDetail(
                      fieldTitleValue: 'Concedido JBM',
                      value: customer.internalGrantedRisk.toString()),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Concedido Fecha',
                      value: (customer.internalGrantedRiskDate != null)
                          ? dateFormatter(customer.internalGrantedRiskDate!
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
                  RowFieldTextDetail(
                      fieldTitleValue: 'Concedido COFACE',
                      value: customer.cofaceGrantedRisk.toString()),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Fecha COFACE',
                      value: (customer.cofaceGrantedRiskDate != null)
                          ? customer.cofaceGrantedRiskDate!.toIso8601String()
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
                  const RowFieldTextDetail(
                      fieldTitleValue: 'Riesgo Actual', value: '¿?'),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Riesgo Concedido',
                      value: customer.riskGranted?.toString() ?? ''),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Pdte. Cobro Vencido',
                      value:
                          customer.riskPendingCollectionDue?.toString() ?? ''),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Pdte. Cobro No vencido',
                      value:
                          customer.riskPendingColleectionNotDue?.toString() ??
                              ''),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Pdte. Servir',
                      value: customer.riskPendingToServe?.toString() ?? ''),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Riesgo Concedido',
                      value: customer.riskPendingBilling?.toString() ?? ''),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
