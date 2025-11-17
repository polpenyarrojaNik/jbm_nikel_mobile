import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/infrastructure/sync_service.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/async_value_ui.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/common_widgets/sin_resultados_widget.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../../notifications/core/application/notification_provider.dart';
import '../../../sync/application/sync_notifier_provider.dart';
import '../../domain/pedido_local_param.dart';
import '../../domain/pedido_venta_estado.dart';
import '../../infrastructure/pedido_venta_repository.dart';
import 'pedido_search_controller.dart';
import 'pedido_venta_lista_tile.dart';
import 'pedido_venta_shimmer.dart';

@RoutePage()
class PedidoVentaListPage extends ConsumerStatefulWidget {
  const PedidoVentaListPage({super.key});

  @override
  ConsumerState<PedidoVentaListPage> createState() =>
      _PedidoVentaListPageState();
}

class _PedidoVentaListPageState extends ConsumerState<PedidoVentaListPage> {
  final _debouncer = Debouncer(milliseconds: 500);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  PedidoVentaEstado? filteredStatus;

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
      (_, state) => state.whenOrNull(
        data: (notificationId) {
          if (notificationId != null) {
            context.router.push(
              NotificationDetailRoute(notificationId: notificationId),
            );
          }
        },
      ),
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
        title: S.of(context).pedido_index_titulo,
        searchTitle: S.of(context).pedido_index_buscarPedidos,
        onChanged: (searchText) => _debouncer.run(() {
          ref
              .read(pedidosSearchQueryParamControllerProvider.notifier)
              .setSearchQuery(searchText);
        }),
        actionButtons: [
          IconButton(
            onPressed: () => searchFilterByEstado(),
            icon: Icon(
              Icons.filter_list,
              color: (filteredStatus != null)
                  ? Theme.of(context).colorScheme.surfaceTint
                  : null,
            ),
          ),
        ],
      ),
      body: stateSync.maybeWhen(
        orElse: () => PedidosListViewWidget(stateSync: stateSync, ref: ref),
        synchronized: () => RefreshIndicator(
          onRefresh: () => syncSalesOrderDB(ref),
          child: PedidosListViewWidget(stateSync: stateSync, ref: ref),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigateToCreatePedido(context),
        child: const Icon(Icons.add),
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

  void navigateToCreatePedido(BuildContext context) {
    context.router.push(PedidoVentaEditRoute(isLocal: true));
  }

  void searchFilterByEstado() async {
    final filterEstado =
        await showDialog(
              context: context,
              builder: (context) =>
                  PedidoVentaFilterDialog(filteredStatus: filteredStatus),
            )
            as PedidoVentaEstado?;

    filteredStatus = filterEstado;

    ref
        .read(pedidoVentaEstadoQueryParamControllerProvider.notifier)
        .setFilter(filterEstado);
  }
}

class PedidosListViewWidget extends StatelessWidget {
  const PedidosListViewWidget({
    super.key,
    required this.stateSync,
    required this.ref,
  });

  final SyncControllerState stateSync;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final statePedidoVentaCount = ref.watch(
      pedidoVentaIndexScreenControllerProvider,
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
          child: statePedidoVentaCount.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            data: (count) => ListView.separated(
              separatorBuilder: (context, i) => const Divider(),
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: count,
              itemBuilder: (context, i) => ref
                  .watch(
                    pedidoVentaIndexScreenPaginatedControllerProvider(
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

class PedidoVentaFilterDialog extends ConsumerStatefulWidget {
  const PedidoVentaFilterDialog({super.key, required this.filteredStatus});

  final PedidoVentaEstado? filteredStatus;

  @override
  ConsumerState<PedidoVentaFilterDialog> createState() =>
      _PedidoVentaFilterDialogState();
}

class _PedidoVentaFilterDialogState
    extends ConsumerState<PedidoVentaFilterDialog> {
  PedidoVentaEstado? newFilterStatus;

  @override
  void initState() {
    super.initState();
    newFilterStatus = widget.filteredStatus;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(pedidoVentaEstadoListProvider);
    return AlertDialog(
      title: Center(child: Text(S.of(context).pedido_index_filtros)),
      content: state.when(
        data: (pedidoVentaEstadoList) => FormBuilderRadioGroup(
          decoration: InputDecoration(
            labelText: S.of(context).pedido_index_estados,
            border: InputBorder.none,
          ),
          name: 'filter_estados',
          options: showFieldOption(pedidoVentaEstadoList),
          initialValue: widget.filteredStatus ?? pedidoVentaEstadoList[0],
          onChanged: (newFilterValue) =>
              changeFilterValue(filterValue: newFilterValue),
        ),
        error: (err, _) => ErrorMessageWidget(err.toString()),
        loading: () => const ProgressIndicatorWidget(),
      ),
      actions: [
        MaterialButton(
          color: Theme.of(context).colorScheme.secondary,
          onPressed: () => resetFilter(context),
          child: Text(
            S.of(context).pedido_index_reset,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        MaterialButton(
          color: Theme.of(context).colorScheme.secondary,
          onPressed: () => applyFilters(context),
          child: Text(
            S.of(context).pedido_index_filtrar,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  List<FormBuilderFieldOption<Object>> showFieldOption(
    List<PedidoVentaEstado> pedidoVentaEstadoList,
  ) {
    final fieldOptions = <FormBuilderFieldOption<Object>>[];
    for (final pedidoVentaEstado in pedidoVentaEstadoList) {
      fieldOptions.add(
        FormBuilderFieldOption(
          value: pedidoVentaEstado,
          child: Text(pedidoVentaEstado.descripcion),
        ),
      );
    }
    return fieldOptions;
  }

  void resetFilter(BuildContext context) {
    context.router.maybePop(null);
  }

  void applyFilters(BuildContext context) {
    context.router.maybePop(newFilterStatus);
  }

  void changeFilterValue({Object? filterValue}) {
    setState(() {
      newFilterStatus = (filterValue as PedidoVentaEstado?);
    });
  }
}
