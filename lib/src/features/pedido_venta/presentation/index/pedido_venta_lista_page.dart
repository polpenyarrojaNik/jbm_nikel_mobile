import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';

import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/error_message_widget.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/pedido_venta_estado.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/index/pedido_search_controller.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/index/pedido_venta_lista_tile.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/index/pedido_venta_shimmer.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/infrastructure/sync_service.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../sync/application/sync_notifier_provider.dart';
import '../../infrastructure/pedido_venta_repository.dart';

class PedidoVentaListPage extends ConsumerStatefulWidget {
  const PedidoVentaListPage({super.key});

  @override
  ConsumerState<PedidoVentaListPage> createState() =>
      _PedidoVentaListPageState();
}

class _PedidoVentaListPageState extends ConsumerState<PedidoVentaListPage> {
  final _debouncer = Debouncer(milliseconds: 500);
  PedidoVentaEstado? filteredStatus;

  @override
  Widget build(BuildContext context) {
    final stateSync = ref.watch(syncNotifierProvider);

    ref.listen<AsyncValue>(
      pedidoVentaIndexScreenControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        isSearchingFirst: false,
        title: S.of(context).pedido_index_titulo,
        searchTitle: S.of(context).pedido_index_buscarPedidos,
        onChanged: (searchText) => _debouncer.run(
          () {
            ref.read(pedidosSearchQueryStateProvider.notifier).state =
                searchText;
          },
        ),
        actionButtons: [
          IconButton(
            onPressed: () => searchFilterByEstado(),
            icon: Icon(Icons.filter_list,
                color: (filteredStatus != null)
                    ? Theme.of(context).colorScheme.surfaceTint
                    : null),
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
    await ref
        .read(syncServiceProvider)
        .syncAllPedidosRelacionados(isInMainThread: true);
    ref.refresh(pedidoVentaLastSyncDateProvider);

    ref.invalidate(pedidoVentaIndexScreenControllerProvider);
  }

  void navigateToCreatePedido(BuildContext context) {
    context.router.push(
      PedidoVentaEditRoute(id: null),
    );
  }

  void searchFilterByEstado() async {
    final filterEstado = await showDialog(
      context: context,
      builder: (context) => PedidoVentaFilterDialog(
        filteredStatus: filteredStatus,
      ),
    ) as PedidoVentaEstado?;

    filteredStatus = filterEstado;

    ref.read(pedidoVentaEstadoQueryStateProvider.notifier).state = filterEstado;
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
    final statePedidoVentaCount =
        ref.watch(pedidoVentaIndexScreenControllerProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        stateSync.maybeWhen(
          orElse: () => const LinearProgressIndicator(),
          synchronized: () {
            final stateLastSyncDate =
                ref.watch(pedidoVentaLastSyncDateProvider);

            return stateLastSyncDate.when(
                data: (fechaUltimaSync) =>
                    UltimaSyncDateWidget(ultimaSyncDate: fechaUltimaSync),
                error: (_, __) => Container(),
                loading: () => const ProgressIndicatorWidget());
          },
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8,
              top: 16.0,
              bottom: 16,
              right: 16,
            ),
            child: statePedidoVentaCount.maybeWhen(
              orElse: () => const ProgressIndicatorWidget(),
              data: (count) => ListView.separated(
                separatorBuilder: (context, i) => const Divider(),
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: count,
                itemBuilder: (context, i) => ref
                    .watch(PedidoVentaIndexScreenPaginatedControllerProvider(
                        page: (i ~/ PedidoVentaRepository.pageSize)))
                    .maybeWhen(
                      orElse: () => const PedidoVentaShimmer(),
                      data: (pedidoVentaList) => PedidoVentaListaTile(
                        pedidoVenta:
                            pedidoVentaList[i % PedidoVentaRepository.pageSize],
                        navigatedFromCliente: false,
                      ),
                    ),
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
    final state = ref.watch(pedidoVentaEstadoProvider);
    return AlertDialog(
      title: Center(
        child: Text(S.of(context).pedido_index_filtros),
      ),
      content: state.when(
          data: (pedidoVentaEstadoList) => FormBuilderRadioGroup(
                decoration: InputDecoration(
                  labelText: S.of(context).pedido_index_estados,
                  border: InputBorder.none,
                ),
                name: 'filter_estados',
                options: showFieldOption(context, pedidoVentaEstadoList),
                initialValue: widget.filteredStatus ?? pedidoVentaEstadoList[0],
                onChanged: (newFilterValue) =>
                    changeFilterValue(filterValue: newFilterValue),
              ),
          error: (err, _) => ErrorMessageWidget(err.toString()),
          loading: () => const ProgressIndicatorWidget()),
      actions: [
        MaterialButton(
          color: Theme.of(context).colorScheme.secondary,
          onPressed: () => resetFilter(context, ref),
          child: Text(
            S.of(context).pedido_index_reset,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        MaterialButton(
          color: Theme.of(context).colorScheme.secondary,
          onPressed: () => applyFilters(context, ref),
          child: Text(
            S.of(context).pedido_index_filtrar,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  List<FormBuilderFieldOption<Object>> showFieldOption(
      BuildContext context, List<PedidoVentaEstado> pedidoVentaEstadoList) {
    final List<FormBuilderFieldOption<Object>> fieldOptions = [];
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

  void resetFilter(BuildContext context, WidgetRef ref) {
    context.router.pop(null);
  }

  void applyFilters(BuildContext context, WidgetRef ref) {
    context.router.pop(newFilterStatus);
  }

  void changeFilterValue({Object? filterValue}) {
    setState(() {
      newFilterStatus = (filterValue as PedidoVentaEstado?);
    });
  }
}
