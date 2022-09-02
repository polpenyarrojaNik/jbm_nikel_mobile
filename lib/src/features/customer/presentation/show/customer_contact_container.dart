import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/row_field_text_detail.dart';

import '../../../../core/presentation/common_widgets/column_field_text_detail.dart';
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
        data: (customerContactList) => (customerContactList.isEmpty)
            ? const Center(child: Text('No Results'))
            : ListView.builder(
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
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowFieldTextDetail(
                fieldTitleValue: 'Id', value: customerContact.customerId),
            (customerContact.name != null && customerContact.name!.length > 35)
                ? ColumnFieldTextDetail(
                    fieldTitleValue: 'Nombre',
                    value: customerContact.name ?? '')
                : RowFieldTextDetail(
                    fieldTitleValue: 'Nombre',
                    value: customerContact.name ?? ''),
            RowFieldTextDetail(
                fieldTitleValue: 'Email', value: customerContact.email ?? ''),
            RowFieldTextDetail(
                fieldTitleValue: 'Phone 1',
                value: customerContact.phone1 ?? ''),
            RowFieldTextDetail(
                fieldTitleValue: 'Phone 2',
                value: customerContact.phone1 ?? ''),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Observaciones',
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).textTheme.caption!.color),
                ),
                Flexible(
                  child: Text(
                    customerContact.remarks ?? '',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
