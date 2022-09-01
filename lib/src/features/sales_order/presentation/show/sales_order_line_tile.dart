import 'package:flutter/material.dart';

import '../../../../core/helpers/formatters.dart';
import '../../domain/sales_order_line.dart';

class SalesOrderLineTile extends StatelessWidget {
  const SalesOrderLineTile({
    Key? key,
    required this.salesOrderLine,
  }) : super(key: key);

  final SalesOrderLine salesOrderLine;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(
            0.2,
          ),
          width: 1,
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 90,
              color: Theme.of(context).colorScheme.surface,
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(salesOrderLine.salesOrderId,
                      style: Theme.of(context).textTheme.caption),
                  Text(salesOrderLine.id),
                ],
              ),
            ),
            Flexible(
              child: Container(
                height: 100,
                padding: const EdgeInsets.all(6.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(salesOrderLine.articleId,
                              style: Theme.of(context).textTheme.subtitle2),
                          Row(
                            children: [
                              Text(
                                '${salesOrderLine.quantity.toDouble()} units',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ],
                          ),
                        ]),
                    Text(
                      salesOrderLine.articleDescription!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pricio: ${salesOrderLine.divisaPrice}x${salesOrderLine.priceType}',
                              style: Theme.of(context).textTheme.caption,
                            ),
                            if (salesOrderLine.discount1 != 0.0 ||
                                salesOrderLine.discount2 != 0.0 ||
                                salesOrderLine.discount3 != 0.0)
                              Text(
                                dtoText(
                                    context,
                                    salesOrderLine.discount1,
                                    salesOrderLine.discount2,
                                    salesOrderLine.discount2),
                                style: Theme.of(context).textTheme.caption,
                              ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'X',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
