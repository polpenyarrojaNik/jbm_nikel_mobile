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
        data: (customerNetGroupList) => ListView.separated(
          separatorBuilder: (context, _) => const Divider(),
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
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text('Grupo Neto Id'),
              Text(customerNetGroup.netGroupId),
            ],
          ),
          const SizedBox(width: 5),
          Column(
            children: [
              const Text('Description'),
              Text(customerNetGroup.netGroupDescription ?? ''),
            ],
          ),
        ],
      ),
    );
  }
}
