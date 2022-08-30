import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/customer_rappel.dart';
import '../../infrastructure/customer_repository.dart';

class CustomerRappelContainer extends ConsumerWidget {
  const CustomerRappelContainer({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(customerRappelProvider(customerId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (customerRappelList) => ListView.separated(
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => CustomerRappelTile(
            customerRappel: customerRappelList[i],
          ),
          itemCount: customerRappelList.length,
        ),
      ),
    );
  }
}

class CustomerRappelTile extends StatelessWidget {
  const CustomerRappelTile({Key? key, required this.customerRappel})
      : super(key: key);

  final CustomerRappel customerRappel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text('Linea'),
                  Text(customerRappel.rappelId),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Description'),
                  Text(customerRappel.description),
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
                  const Text('Date From'),
                  Text(
                      dateFormatter(customerRappel.dateFrom.toIso8601String())),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Date To'),
                  Text((customerRappel.dateTo != null)
                      ? dateFormatter(customerRappel.dateTo!.toIso8601String())
                      : ''),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
