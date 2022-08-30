import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/customer/infrastructure/customer_repository.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/customer_pending_payment.dart';

class CustomerPendingPaymentPage extends ConsumerWidget {
  const CustomerPendingPaymentPage({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(customerPendingPaymentProvider(customerId));
    return Scaffold(
      appBar: AppBar(title: const Text('Pending Payments')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: state.when(
            data: (_) => ListView.separated(
                itemBuilder: (context, i) =>
                    CustomerPendingPaymentTile(customerPendingPayment: _[i]),
                separatorBuilder: (context, i) => const Divider(),
                itemCount: _.length),
            error: (e, __) => ErrorMessageWidget(e.toString()),
            loading: () => const ProgressIndicatorWidget()),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            const Text('Efecto'),
            Text(customerPendingPayment.effectId),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text('Factura'),
                Text(customerPendingPayment.invoiceId ?? ''),
              ],
            ),
            Column(
              children: [
                const Text('Fecha factura'),
                Text((customerPendingPayment.invoiceDate != null)
                    ? dateFormatter(
                        customerPendingPayment.invoiceDate!.toIso8601String())
                    : ''),
              ],
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text('Metodo de cobro'),
                Text(
                    customerPendingPayment.collectionMethod?.description ?? ''),
              ],
            ),
            Column(
              children: [
                const Text('Estado Cobro'),
                Text(customerPendingPayment.collectionStatusId ?? ''),
              ],
            ),
          ],
        ),
        const SizedBox(height: 5),
        Column(
          children: [
            const Text('Amount'),
            Text(customerPendingPayment.amount?.toString() ?? ''),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text('Fecha vencimiento inicial'),
                Text((customerPendingPayment.initialExpirationDate != null)
                    ? dateFormatter(customerPendingPayment
                        .initialExpirationDate!
                        .toIso8601String())
                    : ''),
              ],
            ),
            Column(
              children: [
                const Text('Vencido JBM'),
                (customerPendingPayment.expirationJBM != null)
                    ? Switch(
                        value: customerPendingPayment.expirationJBM!,
                        onChanged: null)
                    : const Text('Undefined'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
