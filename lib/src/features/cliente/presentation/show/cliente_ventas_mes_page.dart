import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClienteVentasMonthPage extends ConsumerWidget {
  const ClienteVentasMonthPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

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
