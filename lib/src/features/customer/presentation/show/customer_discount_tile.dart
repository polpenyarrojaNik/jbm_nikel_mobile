import 'package:flutter/material.dart';

import '../../domain/customer_discount.dart';

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
