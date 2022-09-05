import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/customer_net_group.dart';
import '../../infrastructure/customer_repository.dart';

class CustomerNetGroupContainer extends ConsumerWidget {
  const CustomerNetGroupContainer({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(customerNetGroupProvider(customerId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (customerNetGroupList) => (customerNetGroupList.isEmpty)
            ? const Center(child: Text('No Results'))
            : ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) => CustomerNetGroupTile(
                  customerNetGroup: customerNetGroupList[i],
                ),
                itemCount: customerNetGroupList.length,
              ),
      ),
    );
  }
}

class CustomerNetGroupTile extends StatelessWidget {
  const CustomerNetGroupTile({Key? key, required this.customerNetGroup})
      : super(key: key);

  final CustomerNetGroup customerNetGroup;

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
          children: [
            Container(
              width: 100,
              color: Theme.of(context).colorScheme.surface,
              padding: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(customerNetGroup.netGroupId),
                ],
              ),
            ),
            Flexible(
              child: Container(
                height: 60,
                padding: const EdgeInsets.all(6.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      customerNetGroup.netGroupDescription ?? '',
                      style: Theme.of(context).textTheme.subtitle2,
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
