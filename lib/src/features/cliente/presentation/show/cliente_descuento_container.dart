import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/cliente_descuento.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteDescuentoContainer extends ConsumerWidget {
  const ClienteDescuentoContainer({super.key, required this.clienteId});

  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteDescuentoProvider(clienteId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (clienteDescuentoList) => (clienteDescuentoList.isEmpty)
            ? const Center(child: Text('No Results'))
            : ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) => ClienteDescuentoTile(
                  clienteDescuento: clienteDescuentoList[i],
                ),
                itemCount: 50,
              ),
      ),
    );
  }
}

class ClienteDescuentoTile extends StatelessWidget {
  const ClienteDescuentoTile({super.key, required this.clienteDescuento});

  final ClienteDescuento clienteDescuento;

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
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(clienteDescuento.articuloId,
                    style: Theme.of(context).textTheme.subtitle2),
                Text('${numberFormatCantidades(clienteDescuento.descuento)}%',
                    style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
            Text(
                '${clienteDescuento.familia.descripcion}/${clienteDescuento.subfamilia.descripcion}',
                style: Theme.of(context).textTheme.caption),
            Text(
                'Des de unidad/es ${numberFormatCantidades(clienteDescuento.cantidadDesDe)}',
                style: Theme.of(context).textTheme.headline6),
          ],
        ),
      ),
    );
  }
}
