import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/customer/domain/customer.dart';
import 'package:jbm_nikel_mobile/src/features/customer/presentation/show/customer_address_container.dart';

import '../../../../core/presentation/common_widgets/async_value_widget.dart';
import '../../../../core/presentation/common_widgets/buttons_row_bar_widget.dart';
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
                              Tab(icon: Icon(Icons.local_shipping, size: 16)),
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
                          const Text('Descuento Tipo Entrada'),
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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        customer.id,
      ),
      const SizedBox(
        height: 450,
        child: Center(
          child: Text('Customer INFO'),
        ),
      ),
    ]);
  }
}
