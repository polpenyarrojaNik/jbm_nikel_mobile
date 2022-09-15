import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/cliente_precio_neto.dart';
import '../../infrastructure/cliente_repository.dart';

class ClientePrecioNetoContainer extends ConsumerWidget {
  const ClientePrecioNetoContainer({super.key, required this.clienteId});

  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clientePrecioNetoProvider(clienteId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (clientePrecioNetoList) => (clientePrecioNetoList.isEmpty)
            ? const Center(child: Text('No Results'))
            : ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, _) => const Divider(),
                itemBuilder: (context, i) => ClientePrecioNetoTile(
                  clientePrecioNeto: clientePrecioNetoList[i],
                ),
                itemCount: clientePrecioNetoList.length,
              ),
      ),
    );
  }
}

class ClientePrecioNetoTile extends StatelessWidget {
  const ClientePrecioNetoTile({super.key, required this.clientePrecioNeto});

  final ClientePrecioNeto clientePrecioNeto;

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
        child: Flexible(
          child: Container(
            height: 50,
            padding: const EdgeInsets.all(6.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(clientePrecioNeto.articuloId,
                        style: Theme.of(context).textTheme.subtitle2),
                    Text(
                        '≥ ${numberFormatCantidades(clientePrecioNeto.cantidadDesDe)} unidad/es',
                        style: Theme.of(context).textTheme.subtitle2),
                  ],
                ),
                const Spacer(),
                Text(
                  'Precio: ${numberFormatDecimal(clientePrecioNeto.precio)}x ${clientePrecioNeto.tipoPrecio?.toString() ?? '1'}',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
