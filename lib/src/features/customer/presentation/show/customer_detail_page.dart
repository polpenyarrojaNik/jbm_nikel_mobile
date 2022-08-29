import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/customer/domain/customer.dart';
import 'package:jbm_nikel_mobile/src/features/customer/presentation/show/customer_address_container.dart';

import '../../../../core/presentation/common_widgets/async_value_widget.dart';
import '../../infrastructure/customer_repository.dart';
import 'customer_attachment_tile.dart';
import 'customer_contact_container.dart';
import 'customer_discount_container.dart';
import 'customer_net_group_container.dart';
import 'customer_net_price_customer.dart.dart';
import 'customer_rappel_container.dart';

class CustomerDetailPage extends StatelessWidget {
  const CustomerDetailPage({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer detail'),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final visitValue = ref.watch(customerProvider(customerId));
          return AsyncValueWidget<Customer>(
            value: visitValue,
            data: (visit) => Padding(
              padding: const EdgeInsets.all(8),
              child: DefaultTabController(
                length: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.5),
                      child: SizedBox(
                        height: 45,
                        child: ListView(
                          shrinkWrap: true,
                          controller: ScrollController(),
                          scrollDirection: Axis.horizontal,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text('Pagos Pendientes'))
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                    Text(
                      visit.id,
                    ),
                    const SizedBox(
                      height: 450,
                      child: Center(
                        child: Text('Customer INFO'),
                      ),
                    ),
                    const Divider(),
                    const TabBar(
                      labelColor: Colors.black,
                      tabs: [
                        Tab(icon: Icon(Icons.local_shipping, size: 16)),
                        Tab(icon: Icon(Icons.person, size: 16)),
                        Tab(icon: Icon(Icons.money, size: 16)),
                        Tab(icon: Icon(Icons.group, size: 16)),
                        Tab(icon: Icon(Icons.discount_outlined, size: 16)),
                        Tab(icon: Icon(Icons.local_shipping, size: 16)),
                        Tab(icon: Icon(Icons.local_shipping, size: 16)),
                        Tab(icon: Icon(Icons.attach_file, size: 16)),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
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
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
