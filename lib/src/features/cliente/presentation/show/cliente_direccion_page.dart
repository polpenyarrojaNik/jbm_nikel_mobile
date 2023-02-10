import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/pais.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../domain/cliente_direccion.dart';
import '../../domain/cliente_direccion_edit_param.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteDireccionesPage extends ConsumerWidget {
  const ClienteDireccionesPage(
      {super.key,
      required this.clienteId,
      required this.paisCliente,
      required this.nombreCliente});

  final String clienteId;
  final Pais? paisCliente;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteDireccionListProvider(clienteId));
    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).cliente_show_clienteDireccion_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: '#$clienteId ${nombreCliente ?? ''}',
          ),
          gapH8,
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) => ErrorMessageWidget(e.toString()),
            data: (clienteDireccionList) => (clienteDireccionList.isNotEmpty)
                ? Expanded(
                    child: ListView.separated(
                      itemCount: clienteDireccionList.length,
                      itemBuilder: (context, i) => ClienteDireccionTile(
                        clienteDireccion: clienteDireccionList[i],
                        paisCliente: paisCliente,
                      ),
                      separatorBuilder: (context, i) => const Divider(),
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(S.of(context).sinResultados),
                    ],
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
        clienteDireccionEditParam: ClienteDireccionEditParam(
          clienteId,
          null,
          paisCliente,
          false,
        ),
      ),
    );
  }
}

class ClienteDireccionTile extends StatelessWidget {
  const ClienteDireccionTile(
      {super.key,
      required this.clienteDireccion,
      required this.paisCliente,
      this.isFromPedido = false});

  final ClienteDireccion clienteDireccion;
  final Pais? paisCliente;
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
                child: (clienteDireccion.direccionId != null)
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
                    Text(
                      clienteDireccion.nombre,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    gapH4,
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
                    gapH4,
                    if (!clienteDireccion.tratada)
                      Row(
                        children: [
                          Icon(Icons.error,
                              color: Theme.of(context).colorScheme.error,
                              size: 14),
                          gapW4,
                          Text(
                            S
                                .of(context)
                                .cliente_show_clienteDireccion_hayCambiosSinTramitar,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                          ),
                        ],
                      )
                  ],
                ),
              ),
              if (!isFromPedido)
                IconButton(
                  onPressed: () => navigateToEditClienteDireccion(
                    context,
                    clienteDireccion.clienteId,
                    clienteDireccion.direccionId!,
                    clienteDireccion.tratada,
                    paisCliente,
                  ),
                  icon: const Icon(Icons.edit),
                ),
            ],
          ),
        ],
      ),
    );
  }

  void navigateToEditClienteDireccion(BuildContext context, String clienteId,
      String direccionId, bool tratada, Pais? paisCliente) {
    context.router.push(
      ClienteDireccionEditRoute(
        clienteDireccionEditParam: ClienteDireccionEditParam(
          clienteId,
          direccionId,
          paisCliente,
          tratada,
        ),
      ),
    );
  }
}
