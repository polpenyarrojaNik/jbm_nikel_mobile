import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';

import '../../domain/visit.dart';
import '../../infrastructure/visit_repository.dart';

class VisitDetailPage extends StatelessWidget {
  const VisitDetailPage({Key? key, required this.visitId}) : super(key: key);

  final String visitId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visit detail'),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final visitValue = ref.watch(visitProvider(visitId));
          return AsyncValueWidget<Visit>(
            value: visitValue,
            data: (visit) => Text(
              visit.id,
            ),
          );
        },
      ),
    );
  }
}
