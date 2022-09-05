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
        data: (customerRappelList) => (customerRappelList.isEmpty)
            ? const Center(child: Text('No Results'))
            : ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
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
              width: 50,
              color: Theme.of(context).colorScheme.surface,
              padding: const EdgeInsets.all(4.0),
              child: Center(
                child: Text(customerRappel.rappelId),
              ),
            ),
            Flexible(
              child: Container(
                height: 65,
                padding: const EdgeInsets.all(6.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(customerRappel.description,
                        style: Theme.of(context).textTheme.subtitle2),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                            dateFormatter(
                                customerRappel.dateFrom.toIso8601String()),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.color)),
                        Text('-',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.color)),
                        Text(
                            (customerRappel.dateTo != null)
                                ? dateFormatter(
                                    customerRappel.dateTo!.toIso8601String())
                                : '',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.color)),
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
