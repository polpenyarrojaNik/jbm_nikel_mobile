import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SalesOrderEditPage extends ConsumerStatefulWidget {
  SalesOrderEditPage({super.key, String? salesOrderId, bool? isNew})
      : salesOrderId = salesOrderId ?? const Uuid().v4(),
        isNew = salesOrderId == null ? true : false;

  final String salesOrderId;
  final bool isNew;

  @override
  ConsumerState<SalesOrderEditPage> createState() => _SalesOrderEditPageState();
}

class _SalesOrderEditPageState extends ConsumerState<SalesOrderEditPage> {
  final formKey = GlobalKey<FormBuilderState>();
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
