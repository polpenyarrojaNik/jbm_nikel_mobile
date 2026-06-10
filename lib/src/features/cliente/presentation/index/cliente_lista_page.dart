import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/infrastructure/sync_service.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/async_value_ui.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../../sync/application/sync_notifier_provider.dart';
import '../../domain/cliente_estado.dart';
import '../../infrastructure/cliente_repository.dart';
import 'cliente_list_shimmer.dart';
import 'cliente_lista_tile.dart';
import 'cliente_search_controller.dart';

@RoutePage()
class ClienteListaPage extends ConsumerStatefulWidget {
  ClienteListaPage({
    super.key,
    bool? isCreatedFromSalesOrder,
    bool? isCreatedFromVisits,
  }) : isCreatedFromSalesOrder = isCreatedFromSalesOrder ?? false,
       isCreatedFromVisits = isCreatedFromVisits ?? false;

  final bool isCreatedFromSalesOrder;
  final bool isCreatedFromVisits;
  final String titleScreen = S.current.cliente_index_titulo;

  @override
  ConsumerState<ClienteListaPage> createState() => _ClienteListPageState();
}

class _ClienteListPageState extends ConsumerState<ClienteListaPage> {
  late bool isSearchClienteForFrom;

  final _debouncer = Debouncer(milliseconds: 500);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
    ref
        .read(syncNotifierProvider.notifier)
        .syncAllInCompute(initAppProcess: false);
    isSearchClienteForFrom =
        widget.isCreatedFromSalesOrder || widget.isCreatedFromVisits;
  }

  @override
  Widget build(BuildContext context) {
    final stateSync = ref.watch(syncNotifierProvider);

    ref.listen<AsyncValue<void>>(
      clienteIndexScreenControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    return Scaffold(
      key: scaffoldKey,
      drawer: !isSearchClienteForFrom ? const AppDrawer() : null,
      appBar: CustomSearchAppBar(
        scaffoldKey: scaffoldKey,
        isSearchingFirst: isSearchClienteForFrom,
        title: S.of(context).cliente_index_titulo,
        titleScreen: widget.titleScreen,
        searchTitle: S.of(context).cliente_index_buscarClientes,
        onChanged: (searchText) => _debouncer.run(() {
          ref
              .read(clienteIndexControllerSearchTextParameterProvider.notifier)
              .setFilter(searchText);
        }),
        actionButtons: [
          IconButton(
            onPressed: () => _openFilter(),
            icon: Icon(
              Icons.filter_list,
              color:
                  (ref.watch(clientesEstadoFilterControllerProvider) !=
                      ClienteEstado.todos)
                  ? Theme.of(context).colorScheme.surfaceTint
                  : null,
            ),
          ),
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
          isSearchClienteForFrom: isSearchClienteForFrom,
          isCreatedFromSalesOrder: widget.isCreatedFromSalesOrder,
          isCreatedFromVisits: widget.isCreatedFromVisits,
        ),
        synchronized: () => RefreshIndicator(
          onRefresh: () => syncCustomerDb(ref),
          child: ClientesListViewWidget(
            stateSync: stateSync,
            ref: ref,
            isSearchClienteForFrom: isSearchClienteForFrom,
            isCreatedFromSalesOrder: widget.isCreatedFromSalesOrder,
            isCreatedFromVisits: widget.isCreatedFromVisits,
          ),
        ),
      ),
    );
  }

  void _openFilter() {
    showDialog(
      context: context,
      builder: (context) => ClienteListaAlertDialog(formKey: formKey),
    );
  }

  void navigateToClientesAlrededor(BuildContext context) {
    context.router.push(const ClientesAlrededorRoute());
  }

  Future<void> syncCustomerDb(WidgetRef ref) async {
    try {
      await ref.read(syncServiceProvider).syncClienteUpdate();
      ref.invalidate(clienteLastSyncDateProvider);

      ref.invalidate(clienteIndexScreenControllerProvider);
    } catch (e) {
      if (mounted) {
        await context.showErrorBar(
          content: Text(S.of(context).noSeHaPodidoSincronizar),
        );
      }
    }
  }
}

class ClientesListViewWidget extends StatelessWidget {
  const ClientesListViewWidget({
    super.key,
    required this.stateSync,
    required this.ref,
    required this.isSearchClienteForFrom,
    required this.isCreatedFromSalesOrder,
    required this.isCreatedFromVisits,
  });

  final bool isCreatedFromSalesOrder;
  final bool isCreatedFromVisits;
  final SyncControllerState stateSync;
  final WidgetRef ref;
  final bool isSearchClienteForFrom;

  @override
  Widget build(BuildContext context) {
    final stateClienteListCount = ref.watch(
      clienteIndexScreenControllerProvider,
    );
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
              error: (_, stackTrace) => Container(),
              loading: () => const ProgressIndicatorWidget(),
            );
          },
        ),
        const Gap(8),
        Expanded(
          child: stateClienteListCount.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            data: (count) => ListView.separated(
              separatorBuilder: (context, i) => const Divider(),
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: count,
              itemBuilder: (context, i) => ref
                  .watch(
                    clienteIndexScreenPaginatedControllerProvider(
                      page: (i ~/ ClienteRepository.pageSize),
                    ),
                  )
                  .maybeWhen(
                    orElse: () => const ClienteListShimmer(),
                    data: (clienteList) => ClienteListaTile(
                      cliente: clienteList[i % ClienteRepository.pageSize],
                      onTap:
                          (isCreatedFromSalesOrder &&
                              (clienteList[i % ClienteRepository.pageSize]
                                      .bloqueoOper ||
                                  clienteList[i % ClienteRepository.pageSize]
                                      .obsoleto))
                          ? () => context.showInfoBar(
                              content: Text(
                                S.of(context).customerNotAvailableToSelect,
                              ),
                            )
                          : () {
                              if (!isSearchClienteForFrom) {
                                navigateToClienteDetalle(
                                  context: context,
                                  clienteId:
                                      clienteList[i %
                                              ClienteRepository.pageSize]
                                          .id,
                                );
                              } else {
                                context.router.maybePop(
                                  clienteList[i % ClienteRepository.pageSize],
                                );
                              }
                            },
                    ),
                  ),
            ),
          ),
        ),
      ],
    );
  }

  void navigateToClienteDetalle({
    required BuildContext context,
    required String clienteId,
  }) {
    context.router.push(ClienteDetalleRoute(clienteId: clienteId));
  }
}

class ClienteListaAlertDialog extends ConsumerWidget {
  const ClienteListaAlertDialog({super.key, required this.formKey});

  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: Text(S.of(context).filter),
      content: FormBuilder(
        key: formKey,
        clearValueOnUnregister: false,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FormBuilderDropdown<ClienteEstado>(
              name: 'estado',
              initialValue: ref.watch(clientesEstadoFilterControllerProvider),
              items: ClienteEstado.values
                  .map(
                    (estado) => DropdownMenuItem(
                      value: estado,
                      child: Text(estado.displayName),
                    ),
                  )
                  .toList(),
              validator: FormBuilderValidators.required(),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(S.of(context).close),
        ),
        FilledButton(
          onPressed: () => applyFilter(context, ref),
          child: Text(S.of(context).apply),
        ),
      ],
    );
  }

  void applyFilter(BuildContext context, WidgetRef ref) {
    if (formKey.currentState!.saveAndValidate()) {
      ref
          .read(clientesEstadoFilterControllerProvider.notifier)
          .setFilter(getFormValue(formKey, 'estado'));

      ref
          .read(clientesEstadoFilterControllerProvider.notifier)
          .setFilter(getFormValue(formKey, 'estado'));

      Navigator.of(context).pop();
    }
  }
}
