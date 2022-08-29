import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../infrastructure/customer_repository.dart';
import 'customer_contact_tile.dart';

class CustomerContactContainer extends ConsumerWidget {
  const CustomerContactContainer({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(customerContactProvider(customerId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (customerContactList) => ListView.separated(
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => CustomerContactTile(
            customerContact: customerContactList[i],
          ),
          itemCount: customerContactList.length,
        ),
      ),
    );
  }
}
