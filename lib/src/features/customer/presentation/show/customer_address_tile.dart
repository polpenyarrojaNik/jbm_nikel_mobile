import 'package:flutter/material.dart';

import '../../domain/customer_address.dart';

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
              Column(
                children: const [
                  Text('Tipo'),
                  Text('Tipo??'),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Nombre'),
                  Text(customerAddress.name ?? ''),
                ],
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Text('EDI GN Iter... SINCP'),
                  Text(''),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Direccion1'),
                  Text(customerAddress.address1 ?? ''),
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
                  const Text('Cod.Pos'),
                  Text(customerAddress.zipCode ?? ''),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Población'),
                  Text(customerAddress.state ?? ''),
                ],
              ),
              const SizedBox(height: 5),
              Column(
                children: [
                  const Text('País'),
                  Text(customerAddress.country?.description ?? ''),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
