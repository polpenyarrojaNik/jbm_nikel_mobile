import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/custom_search_app_bar.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/index/visita_lista_shimmer.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/index/visita_lista_tile.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/index/visita_search_controller.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../sync/application/sync_notifier_provider.dart';
import '../../infrastructure/visita_repository.dart';

class VisitaListaPage extends ConsumerWidget {
  VisitaListaPage({super.key});

  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateVisitaListCount = ref.watch(visitaIndexScreenControllerProvider);
    final stateLasySyncDate = ref.watch(visitaLastSyncDateProvider);

    final stateSync = ref.watch(syncNotifierProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        isSearchingFirst: false,
        title: S.of(context).visita_index_titulo,
        searchTitle: S.of(context).visita_index_buscarVisitas,
        onChanged: (searchText) => _debouncer.run(
          () {
            ref.read(visitasSearchQueryStateProvider.notifier).state =
                searchText;
          },
        ),
      ),
      body: stateSync.maybeWhen(
        orElse: () =>
            visitaListViewWidget(stateLasySyncDate, stateVisitaListCount, ref),
        synchronized: () => RefreshIndicator(
          onRefresh: () => refreshVisitsDB(ref),
          child: visitaListViewWidget(
              stateLasySyncDate, stateVisitaListCount, ref),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => navigateToCreateVisitas(context),
      ),
    );
  }

  Column visitaListViewWidget(AsyncValue<DateTime> stateLasySyncDate,
      AsyncValue<int> stateVisitaListCount, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        stateLasySyncDate.when(
            data: (fechaUltimaSync) =>
                UltimaSyncDateWidget(ultimaSyncDate: fechaUltimaSync),
            error: (_, __) => Container(),
            loading: () => const ProgressIndicatorWidget()),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: stateVisitaListCount.maybeWhen(
              orElse: () => const ProgressIndicatorWidget(),
              data: (count) => ListView.separated(
                separatorBuilder: (context, i) => const Divider(),
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: count,
                itemBuilder: (context, i) => ref
                    .watch(VisitaIndexScreenPaginatedControllerProvider(
                        page: (i ~/ VisitaRepository.pageSize)))
                    .maybeWhen(
                      orElse: () => const VisitaListShimmer(),
                      data: (visitaList) => VisitaListaTile(
                          visita: visitaList[i % VisitaRepository.pageSize],
                          navigatedFromCliente: false),
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> refreshVisitsDB(WidgetRef ref) async {
    await ref.read(syncServiceProvider).syncAllVisitasRelacionados();
    ref.refresh(visitaLastSyncDateProvider);

    ref.invalidate(visitaIndexScreenControllerProvider);
  }

  void navigateToCreateVisitas(BuildContext context) {
    context.router.push(VisitaEditRoute());
  }
}
