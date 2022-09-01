import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/column_field_text_detail.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/mobile_custom_separatos.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/domain/sales_order.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/infrastructure/sales_order_repository.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/presentation/show/sales_order_line_tile.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/common_widgets/row_field_text_detail.dart';
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
            data: (salesOrder) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomerInfoContainer(salesOrder: salesOrder),
                  const SizedBox(height: 5.0),
                  SalesOrderInfoContainer(salesOrder: salesOrder),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CustomerInfoContainer extends StatelessWidget {
  const CustomerInfoContainer({Key? key, required this.salesOrder})
      : super(key: key);

  final SalesOrder salesOrder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        left: 8.0,
        right: 8.0,
      ),
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(
            color: Colors.grey.withOpacity(
              0.2,
            ),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (salesOrder.customerName != null)
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        salesOrder.customerName!,
                      ),
                    ),
                  ],
                ),
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
                formatZipCodeAndCity(
                  zipCode: salesOrder.zipCode,
                  city: salesOrder.city,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).textTheme.caption!.color,
                    ),
              ),
              Text(
                formatProvinceAndCountry(
                  province: salesOrder.state,
                  country: salesOrder.country,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).textTheme.caption!.color,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SalesOrderInfoContainer extends StatelessWidget {
  const SalesOrderInfoContainer({Key? key, required this.salesOrder})
      : super(key: key);

  final SalesOrder salesOrder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(
                color: Colors.grey.withOpacity(
                  0.2,
                ),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowFieldTextDetail(
                      fieldTitleValue: 'Status',
                      value: salesOrder.salesOrderStatus.description),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Date',
                      value: dateFormatter(
                          salesOrder.salesOrderDate.toIso8601String())),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(
                color: Colors.grey.withOpacity(
                  0.2,
                ),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowFieldTextDetail(
                      fieldTitleValue: 'Base Imponible',
                      value: salesOrder.taxBase.toString()),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Importe IVA (${salesOrder.iva}%)',
                      value: salesOrder.ivaAmount.toString()),
                  RowFieldTextDetail(
                      fieldTitleValue: 'Total',
                      value: salesOrder.total.toString()),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        SalesOrderLineContainer(salesOrderId: salesOrder.salesOrderId)
      ],
    );
  }
}

class SalesOrderLineContainer extends ConsumerWidget {
  const SalesOrderLineContainer({Key? key, required this.salesOrderId})
      : super(key: key);

  final String salesOrderId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(salesOrderLineProvider(salesOrderId));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MobileCustomSeparators(separatorTitle: 'Lineas'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: state.when(
            data: (salesOrderLineList) => (salesOrderLineList.isEmpty)
                ? const Center(child: Text('No results'))
                : ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, i) => SalesOrderLineTile(
                        salesOrderLine: salesOrderLineList[i]),
                    itemCount: salesOrderLineList.length,
                  ),
            error: (e, _) => ErrorMessageWidget(e.toString()),
            loading: () => const ProgressIndicatorWidget(),
          ),
        )
      ],
    );
  }
}
