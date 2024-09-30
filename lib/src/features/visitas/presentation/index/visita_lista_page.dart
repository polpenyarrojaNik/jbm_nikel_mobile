import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/infrastructure/sync_service.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/async_value_ui.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../../notifications/core/application/notification_provider.dart';
import '../../../sync/application/sync_notifier_provider.dart';
import '../../infrastructure/visita_repository.dart';
import 'visita_lista_shimmer.dart';
import 'visita_lista_tile.dart';
import 'visita_search_controller.dart';

@RoutePage()
class VisitaListaPage extends ConsumerStatefulWidget {
  const VisitaListaPage({super.key});

  @override
  ConsumerState<VisitaListaPage> createState() => _VisitaListaPageState();
}

class _VisitaListaPageState extends ConsumerState<VisitaListaPage> {
  final _debouncer = Debouncer(milliseconds: 500);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    ref
        .read(syncNotifierProvider.notifier)
        .syncAllInCompute(initAppProcess: false);
    ref.read(notificationNotifierProvider.notifier).haveNotification();
  }

  @override
  Widget build(BuildContext context) {
    final stateSync = ref.watch(syncNotifierProvider);

    ref.listen<AsyncValue<String?>>(
      notificationNotifierProvider,
      (_, state) => state.maybeWhen(
        orElse: () {},
        data: (notificationId) {
          if (notificationId != null) {
            context.router
                .push(NotificationDetailRoute(notificationId: notificationId));
          }
        },
      ),
    );

    ref.listen<AsyncValue<void>>(
      visitaIndexScreenControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    return Scaffold(
      key: scaffoldKey,
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        scaffoldKey: scaffoldKey,
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
        orElse: () => VisitaListViewWidget(stateSync: stateSync, ref: ref),
        synchronized: () => RefreshIndicator(
          onRefresh: () => refreshVisitsDB(ref),
          child: VisitaListViewWidget(stateSync: stateSync, ref: ref),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => navigateToCreateVisitas(context),
      ),
    );
  }

  Future<void> refreshVisitsDB(WidgetRef ref) async {
    try {
      await ref
          .read(syncServiceProvider)
          .syncAllVisitasRelacionados(isInMainThread: true);
      ref.invalidate(visitaLastSyncDateProvider);

      ref.invalidate(visitaIndexScreenPaginatedControllerProvider);

      ref.invalidate(visitaIndexScreenControllerProvider);
    } catch (e) {
      if (mounted) {
        await context.showErrorBar(
            content: Text(S.of(context).noSeHaPodidoSincronizar));
      }
    }
  }

  void navigateToCreateVisitas(BuildContext context) {
    context.router.push(VisitaEditRoute());
  }
}

class VisitaListViewWidget extends StatelessWidget {
  const VisitaListViewWidget({
    super.key,
    required this.stateSync,
    required this.ref,
  });

  final SyncControllerState stateSync;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final stateVisitaListCount = ref.watch(visitaIndexScreenControllerProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        stateSync.maybeWhen(
          orElse: () => const LinearProgressIndicator(),
          synchronized: () {
            final stateLastSyncDate = ref.watch(visitaLastSyncDateProvider);

            return stateLastSyncDate.when(
                data: (fechaUltimaSync) =>
                    UltimaSyncDateWidget(ultimaSyncDate: fechaUltimaSync),
                error: (_, __) => Container(),
                loading: () => const ProgressIndicatorWidget());
          },
        ),
        gapH8,
        Expanded(
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
      ],
    );
  }
}
