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
        data: (customerDiscountList) => (customerDiscountList.isEmpty)
            ? const Center(child: Text('No Results'))
            : ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) => CustomerDiscountTile(
                  customerDiscount: customerDiscountList[i],
                ),
                itemCount: 50,
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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(customerDiscount.articleId,
            //         style: Theme.of(context).textTheme.subtitle2),
            //     Text('${customerDiscount.discount.toString()}%',
            //         style: Theme.of(context).textTheme.subtitle2),
            //   ],
            // ),
            // Text(
            //     '${customerDiscount.family.description}/${customerDiscount.subfamily.description}',
            //     style: Theme.of(context).textTheme.caption),
            Text('Des de unidad/es',
                style: Theme.of(context).textTheme.headline6),
          ],
        ),
      ),
    );
  }
}
