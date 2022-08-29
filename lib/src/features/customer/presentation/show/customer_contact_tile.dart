import 'package:flutter/material.dart';
import 'package:jbm_nikel_mobile/src/features/customer/domain/customer_contact.dart';

class CustomerContactTile extends StatelessWidget {
  const CustomerContactTile({Key? key, required this.customerContact})
      : super(key: key);

  final CustomerContact customerContact;

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
                  const Text('Id'),
                  Text(customerContact.contactId),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Nombre'),
                  Text(customerContact.name ?? ''),
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
                  const Text('Apellido 1'),
                  Text(customerContact.lastName1 ?? ''),
                ],
              ),
              Column(
                children: [
                  const Text('Apellido 2'),
                  Text(customerContact.lastName2 ?? ''),
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
                  const Text('Email'),
                  Text(customerContact.email ?? ''),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Phone'),
                  Text(customerContact.phone1 ?? ''),
                ],
              ),
              const SizedBox(width: 5),
              Column(
                children: [
                  const Text('Phone 2'),
                  Text(customerContact.phone2 ?? ''),
                ],
              ),
            ],
          ),
          const SizedBox(height: 5),
          Column(
            children: [
              const Text('Observaciones'),
              Text(customerContact.remarks ?? ''),
            ],
          ),
        ],
      ),
    );
  }
}
