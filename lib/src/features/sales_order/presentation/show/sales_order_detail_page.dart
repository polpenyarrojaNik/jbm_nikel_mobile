import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/domain/sales_order.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/infrastructure/sales_order_repository.dart';

import '../../../../core/routing/app_router.dart';

class SalesOrderDetailPage extends StatelessWidget {
  const SalesOrderDetailPage({Key? key, required this.salesOrderId})
      : super(key: key);

  final String salesOrderId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sales order detail'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => context.goNamed(
              AppRoute.salesorderedit.name,
              params: {
                'id': salesOrderId,
              },
            ),
          ),
        ],
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final salesOrderValue = ref.watch(salesOrderProvider(salesOrderId));
          return AsyncValueWidget<SalesOrder>(
            value: salesOrderValue,
            data: (salesOrder) => Text(
              salesOrder.salesOrderId,
            ),
          );
        },
      ),
    );
  }
}
