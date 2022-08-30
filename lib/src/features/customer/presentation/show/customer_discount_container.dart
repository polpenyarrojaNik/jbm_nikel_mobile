import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/customer_discount.dart';
import '../../infrastructure/customer_repository.dart';

class CustomerDiscountContainer extends ConsumerWidget {
  const CustomerDiscountContainer({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(customerDiscountProvider(customerId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (customerDiscountList) => ListView.separated(
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => CustomerDiscountTile(
            customerDiscount: customerDiscountList[i],
          ),
          itemCount: customerDiscountList.length,
        ),
      ),
    );
  }
}

class CustomerDiscountTile extends StatelessWidget {
  const CustomerDiscountTile({Key? key, required this.customerDiscount})
      : super(key: key);

  final CustomerDiscount customerDiscount;

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
                  const Text('Artículo'),
                  Text(customerDiscount.articleId),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Familia'),
                  Text(customerDiscount.family.description),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Subfamilia'),
                  Text(customerDiscount.subfamily.description),
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
                  const Text('Discount'),
                  Text(customerDiscount.discount.toString()),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Cantidad des de'),
                  Text(customerDiscount.quantityFrom.toString()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
