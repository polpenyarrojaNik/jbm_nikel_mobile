import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/customer_address.dart';
import '../../infrastructure/customer_repository.dart';

class CustomerAddressesContainer extends ConsumerWidget {
  const CustomerAddressesContainer({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(customerAddressStreamProvider(customerId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (customerAddressList) => (customerAddressList.isEmpty)
            ? const Center(child: Text('No Results'))
            : ListView.builder(
                itemBuilder: (context, i) => CustomerAddressTile(
                  customerAddress: customerAddressList[i],
                ),
                itemCount: customerAddressList.length,
              ),
      ),
    );
  }
}

class CustomerAddressTile extends StatelessWidget {
  const CustomerAddressTile({Key? key, required this.customerAddress})
      : super(key: key);

  final CustomerAddress customerAddress;

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
                  Text(customerAddress.addressId),
                  const Spacer(),
                  const Text('¿Tipo?'),
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
                    Text(customerAddress.name ?? '',
                        style: Theme.of(context).textTheme.subtitle2),
                    const Spacer(),
                    Text(
                      customerAddress.address1 ?? '',
                      style: Theme.of(context).textTheme.caption!,
                    ),
                    Text(
                        formatZipCodeAndCity(
                          zipCode: customerAddress.zipCode,
                          city: customerAddress.city,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.caption),
                    Text(
                        formatProvinceAndCountry(
                          province: customerAddress.state,
                          country: customerAddress.country,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.caption),
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
