import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/customer_contact.dart';
import '../../infrastructure/customer_repository.dart';

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

class CustomerContactTile extends StatelessWidget {
  const CustomerContactTile({Key? key, required this.customerContact})
      : super(key: key);

  final CustomerContact customerContact;

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
                  const Text('Id'),
                  Text(customerContact.contactId),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Nombre'),
                  Text(customerContact.name ?? ''),
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
                  const Text('Apellido 1'),
                  Text(customerContact.lastName1 ?? ''),
                ],
              ),
              Column(
                children: [
                  const Text('Apellido 2'),
                  Text(customerContact.lastName2 ?? ''),
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
                  const Text('Email'),
                  Text(customerContact.email ?? ''),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Phone'),
                  Text(customerContact.phone1 ?? ''),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Phone 2'),
                  Text(customerContact.phone2 ?? ''),
                ],
              ),
            ],
          ),
          const SizedBox(height: 5),
          Column(
            children: [
              const Text('Observaciones'),
              Text(customerContact.remarks ?? ''),
            ],
          ),
        ],
      ),
    );
  }
}
