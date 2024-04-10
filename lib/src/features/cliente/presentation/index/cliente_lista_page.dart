import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/index/cliente_search_controller.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../notifications/core/application/notification_provider.dart';
import '../../../sync/application/sync_notifier_provider.dart';
import '../../infrastructure/cliente_repository.dart';
import 'cliente_list_shimmer.dart';
import 'cliente_lista_tile.dart';

@RoutePage()
class ClienteListaPage extends ConsumerStatefulWidget {
  const ClienteListaPage({super.key, required this.isSearchClienteForFrom});

  final bool isSearchClienteForFrom;

  @override
  ConsumerState<ClienteListaPage> createState() => _ClienteListPageState();
}

class _ClienteListPageState extends ConsumerState<ClienteListaPage> {
  final _debouncer = Debouncer(milliseconds: 500);

  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool searchClientesPotenciales = false;
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

    ref.listen<AsyncValue>(
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

    ref.listen<AsyncValue>(
      clienteIndexScreenControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    return Scaffold(
      key: scaffoldKey,
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        scaffoldKey: scaffoldKey,
        isSearchingFirst: widget.isSearchClienteForFrom,
        title: S.of(context).cliente_index_titulo,
        searchTitle: S.of(context).cliente_index_buscarClientes,
        onChanged: (searchText) => _debouncer.run(
          () {
            ref.read(clientesSearchQueryStateProvider.notifier).state =
                searchText;
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
      body: stateSync.maybeWhen(
        orElse: () => ClientesListViewWidget(
            stateSync: stateSync,
            ref: ref,
            isSearchClienteForFrom: widget.isSearchClienteForFrom),
        synchronized: () => RefreshIndicator(
          onRefresh: () => syncCustomerDb(ref),
          child: ClientesListViewWidget(
              stateSync: stateSync,
              ref: ref,
              isSearchClienteForFrom: widget.isSearchClienteForFrom),
        ),
      ),
    );
  }

  void filterClientesPotenciales(BuildContext context) {
    searchClientesPotenciales = !searchClientesPotenciales;

    ref.read(clientesPotencialesQueryStateProvider.notifier).state =
        searchClientesPotenciales;
  }

  void navigateToClientesAlrededor(BuildContext context) {
    context.router.push(const ClientesAlrededorRoute());
  }

  Future<void> syncCustomerDb(WidgetRef ref) async {
    await ref
        .read(syncServiceProvider)
        .syncAllClientesRelacionados(isInMainThread: true);
    ref.invalidate(clienteLastSyncDateProvider);

    ref.invalidate(clienteIndexScreenControllerProvider);
  }
}

class ClientesListViewWidget extends StatelessWidget {
  const ClientesListViewWidget({
    super.key,
    required this.stateSync,
    required this.ref,
    required this.isSearchClienteForFrom,
  });

  final SyncControllerState stateSync;
  final WidgetRef ref;
  final bool isSearchClienteForFrom;

  @override
  Widget build(BuildContext context) {
    final stateClienteListCount =
        ref.watch(clienteIndexScreenControllerProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        stateSync.maybeWhen(
          orElse: () => const LinearProgressIndicator(),
          synchronized: () {
            final stateLastSyncDate = ref.watch(clienteLastSyncDateProvider);

            return stateLastSyncDate.when(
                data: (fechaUltimaSync) =>
                    UltimaSyncDateWidget(ultimaSyncDate: fechaUltimaSync),
                error: (_, __) => Container(),
                loading: () => const ProgressIndicatorWidget());
          },
        ),
        gapH8,
        Expanded(
          child: stateClienteListCount.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            data: (count) => ListView.separated(
              separatorBuilder: (context, i) => const Divider(),
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: count,
              itemBuilder: (context, i) => ref
                  .watch(ClienteIndexScreenPaginatedControllerProvider(
                      page: (i ~/ ClienteRepository.pageSize)))
                  .maybeWhen(
                    orElse: () => const ClienteListShimmer(),
                    data: (clienteList) => GestureDetector(
                      onTap: () => (!isSearchClienteForFrom)
                          ? navigateToClienteDetalle(
                              context: context,
                              clienteId:
                                  clienteList[i % ClienteRepository.pageSize]
                                      .id)
                          : selectClienteForFromPage(
                              context: context,
                              cliente:
                                  clienteList[i % ClienteRepository.pageSize]),
                      child: ClienteListaTile(
                        cliente: clienteList[i % ClienteRepository.pageSize],
                      ),
                    ),
                  ),
            ),
          ),
        ),
      ],
    );
  }

  void navigateToClienteDetalle(
      {required BuildContext context, required String clienteId}) {
    context.router.push(ClienteDetalleRoute(clienteId: clienteId));
  }

  void selectClienteForFromPage(
      {required BuildContext context, required Cliente cliente}) {
    ref.read(clienteForFromStateProvider.notifier).state = cliente;
    context.router.maybePop();
  }
}
