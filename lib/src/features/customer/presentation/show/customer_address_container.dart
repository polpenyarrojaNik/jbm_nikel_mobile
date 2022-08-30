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
        data: (customerAddressList) => ListView.separated(
          separatorBuilder: (context, _) => const Divider(),
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
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(customerAddress.addressId),
              Text(customerAddress.name ?? ''),
            ],
          ),
          const SizedBox(height: 5),
          const Text('¿Tipo?'),
          const SizedBox(height: 5),
          const Text('EDI GN Iter... SINCP¿?'),
          const SizedBox(height: 5),
          Text(
            customerAddress.address1 ?? '',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Theme.of(context).textTheme.caption!.color,
                ),
          ),
          Text(
            formatZipCodeAndCity(
              zipCode: customerAddress.zipCode,
              city: customerAddress.city,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Theme.of(context).textTheme.caption!.color,
                ),
          ),
          Text(
            formatProvinceAndCountry(
              province: customerAddress.state,
              country: customerAddress.country,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Theme.of(context).textTheme.caption!.color,
                ),
          ),
        ],
      ),
    );
  }
}
