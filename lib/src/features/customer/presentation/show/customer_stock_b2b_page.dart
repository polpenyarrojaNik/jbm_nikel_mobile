import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomerStockB2BPage extends ConsumerWidget {
  const CustomerStockB2BPage({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock B2B'),
      ),
      body: const Padding(
          padding: EdgeInsets.all(8),
          child: Center(child: Text('Proximamente'))),
    );
  }
}
