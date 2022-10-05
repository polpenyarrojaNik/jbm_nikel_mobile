import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
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
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).cliente_show_clienteDireccion_titulo,
            entityId: '#$clienteId ${nombreCliente ?? ''}',
          ),
          state.maybeWhen(
            orElse: () => const SliverFillRemaining(
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (clienteDireccionList) => (clienteDireccionList.isNotEmpty)
                ? SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: clienteDireccionList.length,
                        (context, i) => ClienteDireccionTile(
                          clienteDireccion: clienteDireccionList[i],
                        ),
                      ),
                    ))
                : SliverFillRemaining(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(S.of(context).sinResultados),
                      ],
                    ),
                  ),
          ),
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
      padding: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
                child: Text(
                  clienteDireccion.direccionId,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (clienteDireccion.nombre != null)
                      Text(
                        clienteDireccion.nombre!,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    gapH4,
                    if (clienteDireccion.direccion1 != null)
                      Text(
                        clienteDireccion.direccion1!,
                        style: Theme.of(context).textTheme.caption!,
                      ),
                    Text(
                        formatCodigoPostalAndPoblacion(
                          codigoPostal: clienteDireccion.codigoPostal,
                          poblacion: clienteDireccion.poblacion,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.caption),
                    Text(
                        formatProvinciaAndPais(
                          province: clienteDireccion.provincia,
                          pais: clienteDireccion.pais,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.caption),
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
