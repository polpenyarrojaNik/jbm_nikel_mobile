import 'package:flutter/material.dart';

import '../../../core/helpers/formatters.dart';
import '../domain/customer.dart';

class CustomerListTile extends StatelessWidget {
  const CustomerListTile({Key? key, required this.customer}) : super(key: key);

  final Customer customer;

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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (customer.customerName != null)
              Row(
                children: [
                  Flexible(
                    child: Text(
                      customer.customerName!,
                    ),
                  ),
                ],
              ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    '#${customer.id} ${customer.customerName ?? ''}',
                  ),
                ),
              ],
            ),
            Text(
              formatZipCodeAndCity(
                zipCode: customer.fiscalZipCode,
                city: customer.fiscalCity,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Theme.of(context).textTheme.caption!.color,
                  ),
            ),
            Text(
              formatProvinceAndCountry(
                province: customer.fiscalState,
                country: customer.fiscalCountry,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Theme.of(context).textTheme.caption!.color,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
