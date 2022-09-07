import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../estadisticas/domain/estadisticas_ultimos_precios.dart';

class ArticuloUltimosPreciosPage extends ConsumerWidget {
  const ArticuloUltimosPreciosPage({Key? key, required this.articuloId})
      : super(key: key);

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloUltimosPreciosListProvider(articuloId));
    final stateUltimaSync =
        ref.watch(articuloUltimosPreciossUltimaSyncProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Últimos precios'),
      ),
      body: Column(
        children: [
          stateUltimaSync.when(
              data: (ultimaSyncDate) =>
                  UltimaSyncDateWidget(ultimaSyncDate: ultimaSyncDate),
              error: (e, _) => ErrorMessageWidget(e.toString()),
              loading: () => const ProgressIndicatorWidget()),
          Expanded(
            child: state.when(
                data: (lastPriceList) => (lastPriceList.isEmpty)
                    ? const Center(child: Text('No Results'))
                    : ListView.builder(
                        itemBuilder: (context, i) => UltimosPreciosTile(
                            ultimosPrecios: lastPriceList[i]),
                        itemCount: lastPriceList.length,
                      ),
                error: (e, _) => ErrorMessageWidget(e.toString()),
                loading: () => const ProgressIndicatorWidget()),
          ),
        ],
      ),
    );
  }
}

class UltimosPreciosTile extends StatelessWidget {
  const UltimosPreciosTile({Key? key, required this.ultimosPrecios})
      : super(key: key);

  final EstadisticasUltimosPrecios ultimosPrecios;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(
            0.2,
          ),
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
                  Text('#${ultimosPrecios.clienteId}',
                      style: Theme.of(context).textTheme.caption),
                  Row(
                    children: [
                      Text(
                        dateFormatter(ultimosPrecios.fecha.toIso8601String()),
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(ultimosPrecios.articulo.id,
                            style: Theme.of(context).textTheme.subtitle2),
                      ],
                    ),
                    Text(
                      ultimosPrecios.articulo.descripcion,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Precio: ${ultimosPrecios.precioDivisa}x${ultimosPrecios.tipoPrecio}',
                              style: Theme.of(context).textTheme.caption,
                            ),
                            if (ultimosPrecios.descuento1 != 0.0 ||
                                ultimosPrecios.descuento2 != 0.0 ||
                                ultimosPrecios.descuento3 != 0.0)
                              Text(
                                dtoText(
                                    context,
                                    ultimosPrecios.descuento1,
                                    ultimosPrecios.descuento2,
                                    ultimosPrecios.descuento2),
                                style: Theme.of(context).textTheme.caption,
                              ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'X',
                            ),
                          ],
                        ),
                      ],
                    ),
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
