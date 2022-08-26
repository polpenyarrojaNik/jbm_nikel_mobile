import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/visits/infrastructure/visit_repository.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import 'visit_list_tile.dart';

class VisitListPage extends ConsumerWidget {
  const VisitListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();
    final state = ref.watch(visitListStreamProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Visits'),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        controller: scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: state.when(
          loading: () => 1,
          data: (_) => _.length,
          error: (_, __) => 1,
        ),
        itemBuilder: (context, i) => state.when(
          error: (_, __) =>
              Text((_ is AppException) ? _.details.message : _.toString()),
          loading: () => const ProgressIndicatorWidget(),
          data: (_) => VisitListTile(visit: _[i]),
        ),
      ),
    );
  }
}
