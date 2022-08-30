import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomerSalesMonthPage extends ConsumerWidget {
  const CustomerSalesMonthPage({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vtas. Mes'),
      ),
      body: const Padding(
          padding: EdgeInsets.all(8),
          child: Center(child: Text('Proximamente'))),
    );
  }
}
