import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../core/helpers/debouncer.dart';
import '../../core/infrastructure/sync_service.dart';
import '../../core/presentation/common_widgets/app_drawer.dart';
import '../../core/presentation/common_widgets/async_value_ui.dart';
import '../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../core/presentation/common_widgets/sin_resultados_widget.dart';
import '../../core/routing/app_auto_router.dart';
import '../pedido_venta/domain/pedido_local_param.dart';
import '../pedido_venta/infrastructure/pedido_venta_repository.dart';
import '../pedido_venta/presentation/index/pedido_venta_lista_tile.dart';
import '../pedido_venta/presentation/index/pedido_venta_shimmer.dart';
import '../sync/application/sync_notifier_provider.dart';
import 'backorder_lista_controller.dart';

@RoutePage()
class BackorderListPage extends ConsumerStatefulWidget {
  BackorderListPage({super.key});

  final String titleScreen = S.current.backorders;

  @override
  ConsumerState<BackorderListPage> createState() => _BackorderListPageState();
}

class _BackorderListPageState extends ConsumerState<BackorderListPage> {
  final _debouncer = Debouncer(milliseconds: 500);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    ref
        .read(syncNotifierProvider.notifier)
        .syncAllInCompute(initAppProcess: false);
  }

  @override
  Widget build(BuildContext context) {
    final stateSync = ref.watch(syncNotifierProvider);

    ref.listen<AsyncValue<void>>(
      backorderIndexScreenControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    return Scaffold(
      key: scaffoldKey,
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        scaffoldKey: scaffoldKey,
        titleScreen: widget.titleScreen,
        isSearchingFirst: false,
        title: S.of(context).backorders,
        searchTitle: S.of(context).buscarBackorders,
        onChanged: (searchText) => _debouncer.run(() {
          ref
              .read(backorderSearchQueryParamControllerProvider.notifier)
              .setSearchQuery(searchText);
        }),
      ),
      body: stateSync.maybeWhen(
        orElse: () => BackorderListViewWidget(stateSync: stateSync, ref: ref),
        synchronized: () => RefreshIndicator(
          onRefresh: () => syncSalesOrderDB(ref),
          child: BackorderListViewWidget(stateSync: stateSync, ref: ref),
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

      ref.invalidate(backorderIndexScreenControllerProvider);
    } catch (e) {
      if (mounted) {
        await context.showErrorBar(
          content: Text(S.of(context).noSeHaPodidoSincronizar),
        );
      }
    }
  }
}

class BackorderListViewWidget extends StatelessWidget {
  const BackorderListViewWidget({
    super.key,
    required this.stateSync,
    required this.ref,
  });

  final SyncControllerState stateSync;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final stateBackorderCount = ref.watch(
      backorderIndexScreenControllerProvider,
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
          child: stateBackorderCount.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            data: (count) => ListView.separated(
              separatorBuilder: (context, i) => const Divider(),
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: count,
              itemBuilder: (context, i) => ref
                  .watch(
                    backorderIndexScreenPaginatedControllerProvider(
                      page: (i ~/ PedidoVentaRepository.pageSize),
                    ),
                  )
                  .maybeWhen(
                    orElse: () => const PedidoVentaShimmer(),
                    data: (pedidoVentaList) => pedidoVentaList.isNotEmpty
                        ? PedidoVentaListaTile(
                            pedidoVenta:
                                pedidoVentaList[i %
                                    PedidoVentaRepository.pageSize],
                            onTap: () =>
                                (!pedidoVentaList[i %
                                        PedidoVentaRepository.pageSize]
                                    .borrador)
                                ? context.router.push(
                                    PedidoVentaDetalleRoute(
                                      pedidoLocalParam: PedidoLocalParam(
                                        pedidoId:
                                            pedidoVentaList[i %
                                                    PedidoVentaRepository
                                                        .pageSize]
                                                .pedidoVentaId,
                                        empresaId:
                                            pedidoVentaList[i %
                                                    PedidoVentaRepository
                                                        .pageSize]
                                                .empresaId,
                                        pedidoAppId:
                                            pedidoVentaList[i %
                                                    PedidoVentaRepository
                                                        .pageSize]
                                                .pedidoVentaAppId,
                                        isEdit: false,
                                        enviada:
                                            pedidoVentaList[i %
                                                    PedidoVentaRepository
                                                        .pageSize]
                                                .enviada,
                                        tratada:
                                            pedidoVentaList[i %
                                                    PedidoVentaRepository
                                                        .pageSize]
                                                .tratada,
                                      ),
                                    ),
                                  )
                                : context.router.push(
                                    PedidoVentaEditRoute(
                                      pedidoAppId:
                                          pedidoVentaList[i %
                                                  PedidoVentaRepository
                                                      .pageSize]
                                              .pedidoVentaAppId,
                                      isLocal: true,
                                    ),
                                  ),
                          )
                        : const SinResultadosWidget(),
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
