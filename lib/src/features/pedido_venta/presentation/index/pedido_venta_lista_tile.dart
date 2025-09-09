import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/slider_background.dart';
import '../../domain/pedido_venta.dart';
import '../../infrastructure/pedido_venta_repository.dart';
import 'pedido_search_controller.dart';

class PedidoVentaListaTile extends ConsumerWidget {
  const PedidoVentaListaTile({
    super.key,
    required this.pedidoVenta,
    required this.onTap,
  });

  final PedidoVenta pedidoVenta;
  final Function()? onTap;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: IntrinsicHeight(
        child: Dismissible(
          key: UniqueKey(),
          background: const SliderBackround(),
          direction: pedidoVenta.borrador
              ? DismissDirection.horizontal
              : DismissDirection.none,
          onDismissed: pedidoVenta.borrador
              ? (direction) {
                  ref.read(
                    deletePedidoVentaProvider(pedidoVenta.pedidoVentaAppId!),
                  );
                  ref.invalidate(
                    pedidoVentaIndexScreenPaginatedControllerProvider,
                  );
                  ref.invalidate(pedidoVentaIndexScreenControllerProvider);
                }
              : null,
          child: Container(
            padding: const EdgeInsets.only(right: 16),
            color: Colors.transparent,
            child: SizedBox(
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 8,
                    color: pedidoVentaEstadoColor(
                      pedidoVentaEstadoId: pedidoVenta.pedidoVentaEstado?.id,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pedidoVenta.pedidoVentaId ??
                                (pedidoVenta.enviada
                                    ? S.of(context).pending
                                    : S.of(context).pedido_index_offline),
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).textTheme.bodyMedium?.color,
                                ),
                          ),
                          Text(
                            dateFormatter(
                              pedidoVenta.pedidoVentaDate
                                  .toLocal()
                                  .toIso8601String(),
                            ),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const Spacer(),
                          Text(
                            ((pedidoVenta.pedidoVentaEstado != null))
                                ? pedidoVenta.pedidoVentaEstado!.descripcion
                                : getEstadoPedidoLocal(
                                    context,
                                    pedidoVenta.borrador,
                                    pedidoVenta.enviada,
                                    pedidoVenta.tratada,
                                  )!,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#${pedidoVenta.clienteId} ${pedidoVenta.nombreCliente}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                formatCodigoPostalAndPoblacion(
                                  codigoPostal: pedidoVenta.codigoPostal,
                                  poblacion: pedidoVenta.poblacion,
                                ),
                                style: Theme.of(
                                  context,
                                ).textTheme.bodySmall?.copyWith(fontSize: 10),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                formatProvinciaAndPais(
                                  province: pedidoVenta.provincia,
                                  pais: pedidoVenta.pais,
                                ),
                                style: Theme.of(
                                  context,
                                ).textTheme.bodySmall?.copyWith(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(pedidoVenta.baseImponible?.toString() ?? ''),
                        ],
                      ),
                    ),
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
