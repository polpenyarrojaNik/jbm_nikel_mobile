import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/customer_net_price.dart';
import '../../infrastructure/customer_repository.dart';

class CustomerNetPriceContainer extends ConsumerWidget {
  const CustomerNetPriceContainer({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(customerNetPriceProvider(customerId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (customerNetPriceList) => (customerNetPriceList.isEmpty)
            ? const Center(child: Text('No Results'))
            : ListView.separated(
                separatorBuilder: (context, _) => const Divider(),
                itemBuilder: (context, i) => CustomerNetPriceTile(
                  customerNetPrice: customerNetPriceList[i],
                ),
                itemCount: customerNetPriceList.length,
              ),
      ),
    );
  }
}

class CustomerNetPriceTile extends StatelessWidget {
  const CustomerNetPriceTile({Key? key, required this.customerNetPrice})
      : super(key: key);

  final CustomerNetPrice customerNetPrice;

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
        child: Flexible(
          child: Container(
            height: 50,
            padding: const EdgeInsets.all(6.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(customerNetPrice.articleId,
                        style: Theme.of(context).textTheme.subtitle2),
                    Text(
                        'Des de ${customerNetPrice.quantityFrom.toString()} unidad/es',
                        style: Theme.of(context).textTheme.subtitle2),
                  ],
                ),
                const Spacer(),
                Text(
                  'Precio: ${customerNetPrice.price.toString()}x${customerNetPrice.priceType?.toString() ?? '1'}',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
