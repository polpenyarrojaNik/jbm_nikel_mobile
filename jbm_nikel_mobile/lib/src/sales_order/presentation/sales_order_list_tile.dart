import 'package:flutter/material.dart';

import '../domain/sales_order.dart';

class SalesOrderListTile extends StatelessWidget {
  const SalesOrderListTile(
      {Key? key, required this.salesOrder, required this.i})
      : super(key: key);

  final SalesOrder salesOrder;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Card(
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
                Text(salesOrder.taxBase.toString()),
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
            Text(
              i.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
