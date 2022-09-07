import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClienteVentasMonthPage extends ConsumerWidget {
  const ClienteVentasMonthPage({Key? key, required this.clienteId})
      : super(key: key);

  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vtas. Mes'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Text('Proximamente'),
        ),
      ),
    );
  }
}
