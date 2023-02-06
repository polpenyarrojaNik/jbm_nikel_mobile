import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/cliente_direccion.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteDireccionesPage extends ConsumerWidget {
  const ClienteDireccionesPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteDireccionProvider(clienteId));
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
                        ),
                        separatorBuilder: (context, i) => const Divider(),
                      ),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(S.of(context).sinResultados),
                      ],
                    )),
        ],
      ),
    );
  }
}

class ClienteDireccionTile extends StatelessWidget {
  const ClienteDireccionTile({super.key, required this.clienteDireccion});

  final ClienteDireccion clienteDireccion;

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
                        clienteDireccion.direccionId!,
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
                        clienteDireccion.direccion1!,
                        style: Theme.of(context).textTheme.bodySmall!,
                      ),
                    Text(
                        formatCodigoPostalAndPoblacion(
                          codigoPostal: clienteDireccion.codigoPostal,
                          poblacion: clienteDireccion.poblacion,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall),
                    Text(
                        formatProvinciaAndPais(
                          province: clienteDireccion.provincia,
                          pais: clienteDireccion.pais,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
