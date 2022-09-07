import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class VisitaEditPage extends ConsumerStatefulWidget {
  VisitaEditPage({super.key, String? visitaId, bool? isNew})
      : visitaId = visitaId ?? const Uuid().v4(),
        isNew = visitaId == null ? true : false;

  final String visitaId;
  final bool isNew;

  @override
  ConsumerState<VisitaEditPage> createState() => _VisitaEditPageState();
}

class _VisitaEditPageState extends ConsumerState<VisitaEditPage> {
  final formKey = GlobalKey<FormBuilderState>();
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
