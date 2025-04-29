import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../pedido_venta/presentation/edit/pedido_venta_edit_page_controller.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/pais.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../domain/cliente_direccion.dart';
import '../../domain/cliente_direccion_imp.dart';
import '../../domain/cliente_imp_param.dart';
import '../../infrastructure/cliente_repository.dart';
import 'cliente_direccion_delete_controller.dart';
import 'cliente_direccion_list_imp_tile.dart';

@RoutePage()
class ClienteDireccionesListPage extends ConsumerStatefulWidget {
  const ClienteDireccionesListPage({
    super.key,
    required this.clienteId,
    required this.paisCliente,
    required this.nombreCliente,
  });

  final String clienteId;
  final Pais? paisCliente;
  final String? nombreCliente;

  @override
  ConsumerState<ClienteDireccionesListPage> createState() =>
      _ClienteDireccionesListPageState();
}

class _ClienteDireccionesListPageState
    extends ConsumerState<ClienteDireccionesListPage> {
  final _debouncer = Debouncer(milliseconds: 500);
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(clienteDireccionListProvider(widget.clienteId));
    return Scaffold(
      appBar: CustomSearchAppBar(
        isSearchingFirst: false,
        title: S.of(context).cliente_show_clienteDireccion_titulo,
        searchTitle: S.of(context).search,
        onChanged:
            (searchText) => _debouncer.run(() {
              ref.read(customerAddressSearchQueryStateProvider.notifier).state =
                  searchText;
            }),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: '#${widget.clienteId} ${widget.nombreCliente ?? ''}',
          ),
          gapH8,
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) => ErrorMessageWidget(e.toString()),
            data:
                (clienteDireccionList) =>
                    (clienteDireccionList.isNotEmpty)
                        ? Expanded(
                          child: ListView.separated(
                            itemCount: clienteDireccionList.length,
                            itemBuilder:
                                (context, i) => ClienteDireccionTile(
                                  clienteDireccion: clienteDireccionList[i],
                                  clienteImpParam: ClienteImpParam(
                                    widget.clienteId,
                                    id: clienteDireccionList[i].direccionId,
                                    impId:
                                        clienteDireccionList[i]
                                            .direccionImpGuid,
                                    clientePais: widget.paisCliente,
                                  ),
                                ),
                            separatorBuilder: (context, i) => const Divider(),
                          ),
                        )
                        : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text(S.of(context).sinResultados)],
                        ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigateToCreateClienteDireccion(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  void navigateToCreateClienteDireccion(BuildContext context) {
    context.router.push(
      ClienteDireccionEditRoute(
        clienteImpParam: ClienteImpParam(
          widget.clienteId,
          clientePais: widget.paisCliente,
        ),
      ),
    );
  }
}

class ClienteDireccionTile extends StatelessWidget {
  const ClienteDireccionTile({
    super.key,
    required this.clienteDireccion,
    required this.clienteImpParam,
    this.isFromPedido = false,
  });

  final ClienteDireccion clienteDireccion;
  final ClienteImpParam clienteImpParam;
  final bool isFromPedido;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: listPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
                child:
                    (clienteDireccion.direccionId != null)
                        ? Text(
                          (clienteDireccion.direccionId!.length > 3)
                              ? 'PRV'
                              : clienteDireccion.direccionId!,
                        )
                        : null,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (clienteDireccion.nombre != null)
                      Text(
                        clienteDireccion.nombre!,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    if (clienteDireccion.nombre != null) gapH4,
                    if (clienteDireccion.direccion1 != null)
                      Text(
                        formatCustomerAddress(
                          clienteDireccion.direccion1,
                          clienteDireccion.codigoPostal,
                          clienteDireccion.poblacion,
                          clienteDireccion.provincia,
                          clienteDireccion.pais,
                        ),
                        style: Theme.of(context).textTheme.bodySmall!,
                      ),
                    if (!clienteDireccion.enviada ||
                        (!clienteDireccion.enviada && clienteDireccion.deleted))
                      GestureDetector(
                        child: Row(
                          children: [
                            Icon(
                              Icons.error,
                              color: Theme.of(context).colorScheme.error,
                              size: 14,
                            ),
                            gapW4,
                            Flexible(
                              child: Text(
                                S
                                    .of(context)
                                    .cliente_show_clienteDireccion_hayCambiosDeEnviar,
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyMedium?.copyWith(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (clienteDireccion.tratada && clienteImpParam.id != null)
                      _CambiosPendientesDeTramitarListView(clienteImpParam),
                  ],
                ),
              ),
              if (!isFromPedido &&
                  !(clienteDireccion.enviada && !clienteDireccion.tratada))
                _ClienteDireccionActionButtons(clienteImpParam),
            ],
          ),
        ],
      ),
    );
  }
}

class _ClienteDireccionActionButtons extends ConsumerWidget {
  const _ClienteDireccionActionButtons(this.clienteImpParam);

  final ClienteImpParam clienteImpParam;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<bool>>(
      clienteDireccionDeleteControllerProvider(clienteImpParam),
      (_, state) {
        state.maybeWhen(
          orElse: () {},
          error: (error, _) {
            final errorMessage =
                (error is AppException)
                    ? error.details.message
                    : error.toString();

            context.showErrorBar(
              content: Text(errorMessage),
              duration: const Duration(seconds: 5),
            );
          },
          data: (isDeleted) {
            if (isDeleted) {
              ref.invalidate(
                clienteDireccionListProvider(clienteImpParam.clienteId),
              );
              ref.invalidate(
                clienteDireccionImpListInSyncByClienteProvider(clienteImpParam),
              );
            }
          },
        );
      },
    );

    final deleteDireccionValue = ref.watch(
      clienteDireccionDeleteControllerProvider(clienteImpParam),
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            onPressed:
                () => navigateToEditClienteDireccion(context, clienteImpParam),
            icon: const Icon(Icons.edit),
          ),
          gapW4,
          deleteDireccionValue.maybeWhen(
            loading: () => const CircularProgressIndicator(strokeWidth: 2.5),
            orElse:
                () => IconButton(
                  visualDensity: const VisualDensity(
                    horizontal: -4,
                    vertical: -4,
                  ),
                  onPressed:
                      () => navigateToDeleteClienteDireccion(
                        ref,
                        clienteImpParam,
                      ),
                  icon: const Icon(Icons.delete_outline),
                ),
          ),
        ],
      ),
    );
  }

  void navigateToEditClienteDireccion(
    BuildContext context,
    ClienteImpParam clienteImpParam,
  ) {
    context.router.push(
      ClienteDireccionEditRoute(clienteImpParam: clienteImpParam),
    );
  }

  void navigateToDeleteClienteDireccion(
    WidgetRef ref,
    ClienteImpParam clienteImpEditParam,
  ) {
    ref
        .read(
          clienteDireccionDeleteControllerProvider(
            clienteImpEditParam,
          ).notifier,
        )
        .deleteClienteDireccion();
  }
}

class _CambiosPendientesDeTramitarListView extends ConsumerWidget {
  const _CambiosPendientesDeTramitarListView(this.clienteImpParam);

  final ClienteImpParam clienteImpParam;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cambiosPendientesDeTramitarValue = ref.watch(
      clienteDireccionImpListInSyncByClienteProvider(clienteImpParam),
    );
    return cambiosPendientesDeTramitarValue.when(
      data:
          (direccionImpList) =>
              direccionImpList.isEmpty
                  ? Container()
                  : GestureDetector(
                    onTap:
                        () => showCambiosPendietesDeTramitarAlertDialog(
                          context,
                          direccionImpList,
                        ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.error,
                          color: Theme.of(context).colorScheme.error,
                          size: 14,
                        ),
                        gapW4,
                        Flexible(
                          child: Text(
                            S
                                .of(context)
                                .cliente_show_clienteDireccion_hayCambiosSinTramitar,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
      error:
          (error, _) => Text(
            (error is AppException) ? error.details.message : error.toString(),
          ),
      loading:
          () => const SizedBox(
            height: 16,
            width: 16,
            child: CircularProgressIndicator(strokeWidth: 2.5),
          ),
    );
  }

  void showCambiosPendietesDeTramitarAlertDialog(
    BuildContext context,
    List<ClienteDireccionImp> clienteDireccionImpList,
  ) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(
              S
                  .of(context)
                  .cliente_show_clienteDireccion_clienteDireccionListPage_cambiosPendientesDeTramitar,
            ),
            content: SizedBox(
              width: double.maxFinite,
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder:
                    (context, i) => ClienteDireccionImpListTile(
                      clienteDireccionImp: clienteDireccionImpList[i],
                    ),
                separatorBuilder: (context, i) => const Divider(),
                itemCount: clienteDireccionImpList.length,
              ),
            ),
          ),
    );
  }
}
