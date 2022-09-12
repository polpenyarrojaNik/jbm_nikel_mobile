import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/infrastructure/visita_repository.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/index/visita_lista_tile.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class VisitaListaPage extends ConsumerWidget {
  const VisitaListaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();
    final state = ref.watch(visitaListaStreamProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Visitas'),
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
          data: (_) => VisitaListaTile(visita: _[i]),
        ),
      ),
    );
  }
}
