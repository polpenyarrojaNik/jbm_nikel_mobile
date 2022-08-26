import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SalesOrderEditPage extends ConsumerStatefulWidget {
  const SalesOrderEditPage({Key? key, required this.salesOrderId})
      : super(key: key);

  final String salesOrderId;

  @override
  ConsumerState<SalesOrderEditPage> createState() => _SalesOrderEditPageState();
}

class _SalesOrderEditPageState extends ConsumerState<SalesOrderEditPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
