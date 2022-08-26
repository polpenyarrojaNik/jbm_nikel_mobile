import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/domain/sales_order.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/routing/app_router.dart';

class SalesOrderListTile extends StatelessWidget {
  const SalesOrderListTile({Key? key, required this.salesOrder})
      : super(key: key);

  final SalesOrder salesOrder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.goNamed(AppRoute.salesordershow.name,
          params: {'id': salesOrder.salesOrderId}),
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(salesOrder.salesOrderId),
                  Text(dateFormatter(
                      salesOrder.salesOrderDate.toIso8601String())),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      '#${salesOrder.customerId} ${salesOrder.customerName ?? ''}',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(salesOrder.taxBase.toString()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
