import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/customer/infrastructure/customer_repository.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/customer_pending_payment.dart';

class CustomerPendingPaymentPage extends ConsumerWidget {
  const CustomerPendingPaymentPage({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(customerPendingPaymentProvider(customerId));
    final stateLastSync = ref.watch(customerPendingPaymentsLastSyncProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Pending Payments')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            stateLastSync.when(
                data: (lastSyncDate) =>
                    LastSyncDateWidget(lastSyncDate: lastSyncDate),
                error: (e, _) => ErrorMessageWidget(e.toString()),
                loading: () => const ProgressIndicatorWidget()),
            Expanded(
              child: state.when(
                  data: (_) => (_.isEmpty)
                      ? const Center(child: Text('No Results'))
                      : ListView.builder(
                          itemBuilder: (context, i) =>
                              CustomerPendingPaymentTile(
                                  customerPendingPayment: _[i]),
                          itemCount: _.length),
                  error: (e, __) => ErrorMessageWidget(e.toString()),
                  loading: () => const ProgressIndicatorWidget()),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomerPendingPaymentTile extends StatelessWidget {
  const CustomerPendingPaymentTile(
      {Key? key, required this.customerPendingPayment})
      : super(key: key);

  final CustomerPendingPayment customerPendingPayment;

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
                  Text(customerPendingPayment.effectId,
                      style: Theme.of(context).textTheme.caption),
                  const Spacer(),
                  Text(customerPendingPayment.collectionStatusId ?? ''),
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
                        Text(
                          customerPendingPayment.invoiceId ?? '',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        Text(
                          customerPendingPayment.amount?.toString() ?? '',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ],
                    ),
                    if (customerPendingPayment.invoiceDate != null)
                      Text(
                          dateFormatter(customerPendingPayment.invoiceDate!
                              .toIso8601String()),
                          style: Theme.of(context).textTheme.caption),
                    const Spacer(),
                    Row(
                      children: [
                        Icon(Icons.credit_card,
                            size: 12,
                            color: Theme.of(context).textTheme.caption?.color),
                        Text(
                          customerPendingPayment
                                  .collectionMethod?.description ??
                              '',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Vencido JMB',
                                style: Theme.of(context).textTheme.caption),
                            Checkbox(
                                visualDensity: const VisualDensity(
                                    vertical: -4, horizontal: -4),
                                value: customerPendingPayment.expirationJBM!,
                                onChanged: null),
                          ],
                        ),
                        if (customerPendingPayment.initialExpirationDate !=
                            null)
                          Text(
                            'Venc. Inicial ${dateFormatter(customerPendingPayment.initialExpirationDate!.toIso8601String())}',
                            style: Theme.of(context).textTheme.caption,
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
