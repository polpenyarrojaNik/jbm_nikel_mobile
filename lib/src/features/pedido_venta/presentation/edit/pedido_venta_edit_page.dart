import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class PedidoVentaEditPage extends ConsumerStatefulWidget {
  PedidoVentaEditPage({super.key, String? pedidoVentaId, bool? isNew})
      : pedidoVentaId = pedidoVentaId ?? const Uuid().v4(),
        isNew = pedidoVentaId == null ? true : false;

  final String pedidoVentaId;
  final bool isNew;

  @override
  ConsumerState<PedidoVentaEditPage> createState() =>
      _PedidoVentaEditPageState();
}

class _PedidoVentaEditPageState extends ConsumerState<PedidoVentaEditPage> {
  final formKey = GlobalKey<FormBuilderState>();
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
