import 'package:flutter/material.dart';

import '../../domain/customer_net_group.dart';

class CustomerNetGroupTile extends StatelessWidget {
  const CustomerNetGroupTile({Key? key, required this.customerNetGroup})
      : super(key: key);

  final CustomerNetGroup customerNetGroup;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text('Grupo Neto Id'),
              Text(customerNetGroup.netGroupId),
            ],
          ),
          const SizedBox(width: 5),
          Column(
            children: [
              const Text('Description'),
              Text(customerNetGroup.netGroupDescription ?? ''),
            ],
          ),
        ],
      ),
    );
  }
}
