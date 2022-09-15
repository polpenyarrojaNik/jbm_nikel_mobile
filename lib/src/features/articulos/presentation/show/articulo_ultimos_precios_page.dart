import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../estadisticas/domain/estadisticas_ultimos_precios.dart';

class ArticuloUltimosPreciosPage extends ConsumerWidget {
  const ArticuloUltimosPreciosPage({super.key, required this.articuloId});

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloUltimosPreciosListProvider(articuloId));

    return Scaffold(
      appBar: AppBar(
        title: Text(articuloId),
        bottom: AppBar(
          title: const Text('Últimos Precios'),
          automaticallyImplyLeading: false,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: state.when(
            data: (lastPriceList) => (lastPriceList.isEmpty)
                ? const Center(child: Text('No Results'))
                : ListView.separated(
                    separatorBuilder: (context, i) => const Divider(),
                    itemBuilder: (context, i) =>
                        UltimosPreciosTile(ultimosPrecios: lastPriceList[i]),
                    itemCount: lastPriceList.length,
                  ),
            error: (e, _) => ErrorMessageWidget(e.toString()),
            loading: () => const ProgressIndicatorWidget()),
      ),
    );
  }
}

class UltimosPreciosTile extends StatelessWidget {
  const UltimosPreciosTile({super.key, required this.ultimosPrecios});

  final EstadisticasUltimosPrecios ultimosPrecios;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 65,
              child: Text(
                dateFormatter(ultimosPrecios.fecha.toLocal().toIso8601String()),
                style: Theme.of(context).textTheme.caption?.copyWith(
                    color: Theme.of(context).textTheme.bodyText2?.color),
              ),
            ),
            const VerticalDivider(),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      '#${ultimosPrecios.clienteId} ${ultimosPrecios.nombreCliente ?? ''}',
                    ),
                  ),
                  gapH4,
                  Row(
                    children: [
                      const Icon(
                        MdiIcons.currencySign,
                        size: 16,
                      ),
                      gapW4,
                      Text(
                        formatPrecioYDescuento(
                          precio: ultimosPrecios.precioDivisa,
                          tipoPrecio: ultimosPrecios.tipoPrecio,
                          descuento1: ultimosPrecios.descuento1,
                          descuento2: ultimosPrecios.descuento2,
                          descuento3: ultimosPrecios.descuento3,
                        ),
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).textTheme.caption?.color),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
