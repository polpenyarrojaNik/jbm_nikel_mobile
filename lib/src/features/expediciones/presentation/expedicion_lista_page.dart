import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../generated/l10n.dart';
import '../../../core/helpers/debouncer.dart';
import '../../../core/infrastructure/sync_service.dart';
import '../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../core/presentation/common_widgets/async_value_ui.dart';
import '../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../core/presentation/common_widgets/sin_resultados_widget.dart';
import '../../../core/routing/app_auto_router.dart';
import '../../notifications/core/application/notification_provider.dart';
import '../../pedido_venta/infrastructure/pedido_venta_repository.dart';
import '../../pedido_venta/presentation/index/pedido_search_controller.dart';
import '../../sync/application/sync_notifier_provider.dart';
import 'expedicion_search_controller.dart';
import 'expedicion_tile.dart';

@RoutePage()
class ExpedicionListPage extends ConsumerStatefulWidget {
  const ExpedicionListPage({super.key});

  @override
  ConsumerState<ExpedicionListPage> createState() =>
      _ExpedicionListPageListPageState();
}

class _ExpedicionListPageListPageState
    extends ConsumerState<ExpedicionListPage> {
  final _debouncer = Debouncer(milliseconds: 500);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    ref
        .read(syncNotifierProvider.notifier)
        .syncAllInCompute(initAppProcess: false);

    ref.read(notificationProvider.notifier).build();
  }

  @override
  Widget build(BuildContext context) {
    final stateSync = ref.watch(syncNotifierProvider);

    ref.listen<AsyncValue<String?>>(
      notificationProvider,
      (_, state) => state.whenData((notificationId) {
        if (notificationId != null) {
          context.router.push(
            NotificationDetailRoute(notificationId: notificationId),
          );
        }
      }),
    );

    ref.listen<AsyncValue<void>>(
      pedidoVentaIndexScreenControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    return Scaffold(
      key: scaffoldKey,
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        scaffoldKey: scaffoldKey,
        isSearchingFirst: false,
        title: S.of(context).commonWidgets_appDrawer_expediciones,
        searchTitle: S.of(context).pedido_index_buscarPedidos,
        onChanged: (searchText) => _debouncer.run(() {
          ref
              .read(expedicionSearchQueryParamsControllerProvider.notifier)
              .setSearchQuery(searchText);
        }),
      ),
      body: stateSync.maybeWhen(
        orElse: () =>
            PedidoExpedicionListViewWidget(stateSync: stateSync, ref: ref),
        synchronized: () => RefreshIndicator(
          onRefresh: () => syncSalesOrderDB(ref),
          child: PedidoExpedicionListViewWidget(stateSync: stateSync, ref: ref),
        ),
      ),
    );
  }

  Future<void> syncSalesOrderDB(WidgetRef ref) async {
    try {
      await ref
          .read(syncServiceProvider)
          .syncAllPedidosRelacionados(isInMainThread: true);
      ref.invalidate(pedidoVentaLastSyncDateProvider);

      ref.invalidate(pedidoVentaIndexScreenControllerProvider);
    } catch (e) {
      if (mounted) {
        await context.showErrorBar(
          content: Text(S.of(context).noSeHaPodidoSincronizar),
        );
      }
    }
  }
}

class PedidoExpedicionListViewWidget extends StatelessWidget {
  const PedidoExpedicionListViewWidget({
    super.key,
    required this.stateSync,
    required this.ref,
  });

  final SyncControllerState stateSync;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final statePedidoVentaList = ref.watch(
      expedicionIndexScreenControllerProvider,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        stateSync.maybeWhen(
          orElse: () => const LinearProgressIndicator(),
          synchronized: () {
            final stateLastSyncDate = ref.watch(
              pedidoVentaLastSyncDateProvider,
            );

            return stateLastSyncDate.when(
              data: (fechaUltimaSync) =>
                  UltimaSyncDateWidget(ultimaSyncDate: fechaUltimaSync),
              error: (_, stackTrace) => Container(),
              loading: () => const ProgressIndicatorWidget(),
            );
          },
        ),
        const Gap(8),
        Expanded(
          child: statePedidoVentaList.when(
            loading: () => const Center(child: ProgressIndicatorWidget()),
            error: (error, _) =>
                Center(child: ErrorMessageWidget(error.toString())),
            data: (expedicionList) => expedicionList.isNotEmpty
                ? ListView.separated(
                    separatorBuilder: (context, i) => const Divider(),
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: expedicionList.length,
                    itemBuilder: (context, i) =>
                        ExpedicionListaTile(expedicion: expedicionList[i]),
                  )
                : const SinResultadosWidget(),
          ),
        ),
      ],
    );
  }
}
