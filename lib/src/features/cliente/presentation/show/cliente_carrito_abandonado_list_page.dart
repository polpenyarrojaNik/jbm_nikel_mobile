import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/common_compact_pill.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../domain/carrito_abandonado.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_carrito_abandonado_list_page.g.dart';

@riverpod
class ClienteCarritoAbandonadosController
    extends _$ClienteCarritoAbandonadosController {
  @override
  Future<List<CarritoAbandonado>> build(String clienteId) {
    return ref
        .read(clienteRepositoryProvider)
        .getClienteCarritosAbandonados(clienteId: clienteId);
  }
}

@RoutePage()
class ClienteCarritoAbandonadoListPage extends ConsumerWidget {
  const ClienteCarritoAbandonadoListPage({super.key, required this.clienteId});

  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      clienteCarritoAbandonadosControllerProvider(clienteId),
    );

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).carritosAbandonados)),
      body: state.when(
        data: (carritos) => ListView.separated(
          itemCount: carritos.length,
          itemBuilder: (context, index) =>
              CarritoAbandonadoListTile(carrito: carritos[index]),
          separatorBuilder: (context, index) => const Gap(8),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) =>
            Center(child: ErrorMessageWidget(error.toString())),
      ),
    );
  }
}

class CarritoAbandonadoListTile extends StatelessWidget {
  const CarritoAbandonadoListTile({super.key, required this.carrito});

  final CarritoAbandonado carrito;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () => _onCarritoAbandonadoTap(context, carrito),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ID: ${carrito.carritoId}',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      CommonCompactPill(
                        label: carrito.statusName,
                        backgroundColor:
                            carrito.status == CarritoAbandonadoStatus.pending
                            ? null
                            : Theme.of(context).colorScheme.errorContainer,
                        foreGroundColor:
                            carrito.status == CarritoAbandonadoStatus.pending
                            ? null
                            : Theme.of(context).colorScheme.onErrorContainer,
                      ),
                    ],
                  ),
                  Text(
                    '#${carrito.customerId} ${carrito.customerName}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    carrito.contactName,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    '${S.of(context).cartsLines}: ${carrito.lineas.length}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void _onCarritoAbandonadoTap(BuildContext context, CarritoAbandonado carrito) {
  showDialog(
    context: context,
    builder: (ctx) => CarritoAbandonadoLineasDialog(carrito: carrito),
  );
}

class CarritoAbandonadoLineasDialog extends StatelessWidget {
  const CarritoAbandonadoLineasDialog({super.key, required this.carrito});

  final CarritoAbandonado carrito;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('${S.of(context).cartsLines} - ${carrito.carritoId}'),
      content: SizedBox(
        width: double.maxFinite,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: carrito.lineas.length,
          itemBuilder: (context, i) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(carrito.lineas[i].articleId),
                Text('${carrito.lineas[i].quantity} ${S.of(context).unidad}'),
              ],
            );
          },
          separatorBuilder: (context, index) => const Divider(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(S.of(context).close),
        ),
      ],
    );
  }
}
