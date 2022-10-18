import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/index/cliente_search_state.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

import '../../../../core/presentation/common_widgets/sin_resultados_widget.dart';
import '../../infrastructure/cliente_repository.dart';
import 'cliente_lista_tile.dart';

class ClienteListaPage extends ConsumerStatefulWidget {
  const ClienteListaPage({super.key, required this.isSearchClienteForFrom});

  final bool isSearchClienteForFrom;

  @override
  ConsumerState<ClienteListaPage> createState() => _ClienteListPageState();
}

class _ClienteListPageState extends ConsumerState<ClienteListaPage> {
  final _scrollController = ScrollController();
  final _debouncer = Debouncer(milliseconds: 500);

  int page = 1;
  bool searchClientesPotenciales = false;
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
        ref.read(clientesPaginationQueryStateProvider.notifier).state =
            page + 1;
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
    ref.listen<int>(
      clientesPaginationQueryStateProvider,
      (_, numPage) {
        page = numPage;
      },
    );
    ref.listen<AsyncValue>(
      clientesSearchResultsProvider,
      (_, state) {
        state.whenData((value) {
          if (value is List<Cliente> && value.length == page * 100) {
            canLoadNextPage = true;
          } else {
            canLoadNextPage = false;
          }
        });

        state.showAlertDialogOnError(context);
      },
    );

    final state = ref.watch(clientesSearchResultsProvider);
    final stateLasySyncDate = ref.watch(clienteLastSyncDateProvider);

    return Scaffold(
      drawer: (!widget.isSearchClienteForFrom) ? const AppDrawer() : null,
      appBar: CustomSearchAppBar(
        title: S.of(context).cliente_index_titulo,
        searchTitle: S.of(context).cliente_index_buscarClientes,
        onChanged: (searchText) => _debouncer.run(
          () {
            ref.read(clientesSearchQueryStateProvider.notifier).state =
                searchText;
            ref.read(clientesPaginationQueryStateProvider.notifier).state = 1;
          },
        ),
        actionButtons: [
          IconButton(
            onPressed: () => filterClientesPotenciales(context),
            icon: Icon(
              Icons.abc,
              color: (searchClientesPotenciales)
                  ? Theme.of(context).colorScheme.surfaceTint
                  : null,
            ),
          ),
          if (!widget.isSearchClienteForFrom)
            IconButton(
              onPressed: () => navigateToClientesAlrededor(context),
              icon: const Icon(Icons.near_me_outlined),
            ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => syncCustomerDb(ref),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              stateLasySyncDate.when(
                  data: (fechaUltimaSync) =>
                      UltimaSyncDateWidget(ultimaSyncDate: fechaUltimaSync),
                  error: (_, __) => Container(),
                  loading: () => const ProgressIndicatorWidget()),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: state.when(
                  loading: () => const ProgressIndicatorWidget(),
                  error: (e, _) => ErrorMessageWidget(e.toString()),
                  data: (clienteList) => (clienteList.isEmpty)
                      ? const SinResultadosWidget()
                      : ListView.separated(
                          separatorBuilder: (context, i) => const Divider(),
                          shrinkWrap: true,
                          controller: _scrollController,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: clienteList.length,
                          itemBuilder: (context, i) => GestureDetector(
                            onTap: () => (!widget.isSearchClienteForFrom)
                                ? navigateToClienteDetalle(
                                    context: context,
                                    clienteId: clienteList[i].id)
                                : selectClienteForFromPage(
                                    context: context, cliente: clienteList[i]),
                            child: ClienteListaTile(
                              cliente: clienteList[i],
                            ),
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigateToClienteDetalle(
      {required BuildContext context, required String clienteId}) {
    context.router.push(ClienteDetalleRoute(clienteId: clienteId));
  }

  void selectClienteForFromPage(
      {required BuildContext context, required Cliente cliente}) {
    ref.read(clienteForFromStateProvider.notifier).state = cliente;
    context.router.pop();
  }

  void navigateToClientesAlrededor(BuildContext context) {
    context.router.push(const ClientesAlrededorRoute());
  }

  Future<void> syncCustomerDb(WidgetRef ref) async {
    await ref.read(syncServiceProvider).syncAllClientesRelacionados();

    ref.refresh(clientesSearchQueryStateProvider);
  }

  void filterClientesPotenciales(BuildContext context) {
    searchClientesPotenciales = !searchClientesPotenciales;
    ref.read(clientesPaginationQueryStateProvider.notifier).state = 1;
    ref.read(clientesPotencialesQueryStateProvider.notifier).state =
        searchClientesPotenciales;
  }
}
