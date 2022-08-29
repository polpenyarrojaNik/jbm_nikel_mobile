import 'package:flutter/material.dart';

import '../../../../core/helpers/formatters.dart';
import '../../domain/customer_rappel.dart';

class CustomerRappelTile extends StatelessWidget {
  const CustomerRappelTile({Key? key, required this.customerRappel})
      : super(key: key);

  final CustomerRappel customerRappel;

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
                  const Text('Linea'),
                  Text(customerRappel.rappelId),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Description'),
                  Text(customerRappel.description),
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
                  const Text('Date From'),
                  Text(
                      dateFormatter(customerRappel.dateFrom.toIso8601String())),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Date To'),
                  Text((customerRappel.dateTo != null)
                      ? dateFormatter(customerRappel.dateTo!.toIso8601String())
                      : ''),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
