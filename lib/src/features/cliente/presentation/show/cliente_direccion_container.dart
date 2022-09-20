import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/cliente_direccion.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteDireccionesContainer extends ConsumerWidget {
  const ClienteDireccionesContainer({super.key, required this.clienteId});

  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteDireccionStreamProvider(clienteId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (clienteDireccionList) => (clienteDireccionList.isEmpty)
            ? Center(child: Text(S.of(context).sinResultados))
            : ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) => ClienteDireccionTile(
                  clienteDireccion: clienteDireccionList[i],
                ),
                itemCount: clienteDireccionList.length,
              ),
      ),
    );
  }
}

class ClienteDireccionTile extends StatelessWidget {
  const ClienteDireccionTile({super.key, required this.clienteDireccion});

  final ClienteDireccion clienteDireccion;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 90,
              color: Theme.of(context).colorScheme.surface,
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(clienteDireccion.direccionId),
                  const Spacer(),
                  const Text('¿Tipo?'),
                ],
              ),
            ),
            Flexible(
              child: Container(
                height: 100,
                padding: const EdgeInsets.all(6.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(clienteDireccion.nombre ?? '',
                        style: Theme.of(context).textTheme.subtitle2),
                    const Spacer(),
                    Text(
                      clienteDireccion.direccion1 ?? '',
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
            ),
          ],
        ),
      ),
    );
  }
}
