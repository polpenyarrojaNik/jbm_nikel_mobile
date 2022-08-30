import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomerSalesArticlePage extends ConsumerWidget {
  const CustomerSalesArticlePage({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vtas. Artículo'),
      ),
      body: const Padding(
          padding: EdgeInsets.all(8),
          child: Center(child: Text('Proximamente'))),
    );
  }
}
