import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';

import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/error_message_widget.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/pedido_venta_estado.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/index/pedido_search_state.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/index/pedido_venta_lista_tile.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/index/pedido_venta_shimmer.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/infrastructure/sync_service.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../infrastructure/pedido_venta_repository.dart';

class PedidoVentaListPage extends ConsumerStatefulWidget {
  const PedidoVentaListPage({super.key});

  @override
  ConsumerState<PedidoVentaListPage> createState() =>
      _PedidoVentaListPageState();
}

class _PedidoVentaListPageState extends ConsumerState<PedidoVentaListPage> {
  final _scrollController = ScrollController();
  final _debouncer = Debouncer(milliseconds: 500);
  PedidoVentaEstado? filteredStatus;
  bool canLoadNextPage = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_dismissOnScreenKeyboard);
    _scrollController.addListener(() {
      final metrics = _scrollController.position;
      final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;

      if (canLoadNextPage && metrics.pixels >= limit) {
        canLoadNextPage = false;
        ref.read(pedidosSearchResultsProvider.notifier).getNextPage();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_dismissOnScreenKeyboard);
    super.dispose();
  }

  // When the search text field gets the focus, the keyboard appears on mobile.
  // This method is used to dismiss the keyboard when the user scrolls.
  void _dismissOnScreenKeyboard() {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue>(
      pedidosSearchResultsProvider,
      (_, state) {
        canLoadNextPage = true;
        state.showAlertDialogOnError(context);
      },
    );

    final state = ref.watch(pedidosSearchResultsProvider);

    final stateLasySyncDate = ref.watch(pedidoVentaLastSyncDateProvider);

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
      body: RefreshIndicator(
        onRefresh: () => syncSalesOrderDB(ref),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            stateLasySyncDate.when(
                data: (fechaUltimaSync) =>
                    UltimaSyncDateWidget(ultimaSyncDate: fechaUltimaSync),
                error: (_, __) => Container(),
                loading: () => const ProgressIndicatorWidget()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  top: 16.0,
                  bottom: 16,
                  right: 16,
                ),
                child: ListView.separated(
                  controller: _scrollController,
                  separatorBuilder: (context, i) => const Divider(),
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.when(
                    data: (pedidoVentaList) => pedidoVentaList.length,
                    loading: () => 1,
                    error: (error, _) => 1,
                  ),
                  itemBuilder: (context, i) => state.when(
                    data: (pedidoVentaList) => state.isRefreshing
                        ? const PedidoVentaShimmer()
                        : PedidoVentaListaTile(
                            pedidoVenta: pedidoVentaList[i],
                            navigatedFromCliente: false,
                          ),
                    loading: () => const PedidoVentaShimmer(),
                    error: (error, _) => ErrorMessageWidget(error.toString()),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigateToCreatePedido(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> syncSalesOrderDB(WidgetRef ref) async {
    await ref.read(syncServiceProvider).syncAllPedidosRelacionados();
    ref.refresh(pedidoVentaLastSyncDateProvider);

    ref.invalidate(pedidosSearchResultsProvider);
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
