import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articles/infrastructure/article_repository.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../sales_order/domain/sales_order_line.dart';

class ArticleSalesOrderPage extends ConsumerWidget {
  const ArticleSalesOrderPage({Key? key, required this.articleId})
      : super(key: key);

  final String articleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleSalesOrderLineListProvider(articleId));
    final stateLastSync = ref.watch(articleSalesOrderLastSyncProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Pedidos')),
      body: Column(
        children: [
          stateLastSync.when(
              data: (lastSyncDate) =>
                  LastSyncDateWidget(lastSyncDate: lastSyncDate),
              error: (e, _) => ErrorMessageWidget(e.toString()),
              loading: () => const ProgressIndicatorWidget()),
          Expanded(
            child: state.when(
                data: (salesOrderListLine) => (salesOrderListLine.isEmpty)
                    ? const Center(child: Text('No Results'))
                    : ListView.builder(
                        itemBuilder: (context, i) => SalesOrderLineTile(
                            salesOrderLine: salesOrderListLine[i]),
                        itemCount: salesOrderListLine.length,
                      ),
                error: (e, _) => ErrorMessageWidget(e.toString()),
                loading: () => const ProgressIndicatorWidget()),
          ),
        ],
      ),
    );
  }
}

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
