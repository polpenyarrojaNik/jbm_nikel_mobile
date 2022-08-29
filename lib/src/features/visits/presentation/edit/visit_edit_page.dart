import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class VisitEditPage extends ConsumerStatefulWidget {
  VisitEditPage({super.key, String? visitId, bool? isNew})
      : visitId = visitId ?? const Uuid().v4(),
        isNew = visitId == null ? true : false;

  final String visitId;
  final bool isNew;

  @override
  ConsumerState<VisitEditPage> createState() => _VisitEditPageState();
}

class _VisitEditPageState extends ConsumerState<VisitEditPage> {
  final formKey = GlobalKey<FormBuilderState>();
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
