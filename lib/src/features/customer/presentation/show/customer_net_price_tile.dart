import 'package:flutter/material.dart';

import '../../domain/customer_net_price.dart';

class CustomerNetPriceTile extends StatelessWidget {
  const CustomerNetPriceTile({Key? key, required this.customerNetPrice})
      : super(key: key);

  final CustomerNetPrice customerNetPrice;

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
                  Text(customerNetPrice.articleId),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Price Type'),
                  Text(customerNetPrice.priceType.toString()),
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
                  const Text('Price'),
                  Text(customerNetPrice.price.toString()),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Cantidad des de'),
                  Text(customerNetPrice.quantityFrom.toString()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
