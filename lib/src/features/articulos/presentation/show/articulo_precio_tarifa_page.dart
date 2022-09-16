import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_precio_tarifa.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class ArticuloPrecioTarifaPage extends ConsumerWidget {
  const ArticuloPrecioTarifaPage(
      {super.key, required this.articuloId, required this.description});

  final String articuloId;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloPrecioTarifaListProvider(articuloId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Precios Tarifa'),
        bottom: AppBar(
          title: Column(
            children: [
              Text(articuloId),
              Text(description, style: Theme.of(context).textTheme.bodyText2),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: state.maybeWhen(
          orElse: () => const ProgressIndicatorWidget(),
          error: (e, st) => ErrorMessageWidget(e.toString()),
          data: (articuloPrecioTarifaList) =>
              (articuloPrecioTarifaList.isNotEmpty)
                  ? ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, _) => const Divider(),
                      itemBuilder: (context, i) => ArticuloPrecioTarifaTile(
                        articuloPrecioTarifa: articuloPrecioTarifaList[i],
                      ),
                      itemCount: articuloPrecioTarifaList.length,
                    )
                  : const Center(child: Text('Sin resultado')),
        ),
      ),
    );
  }
}

class ArticuloPrecioTarifaTile extends StatelessWidget {
  const ArticuloPrecioTarifaTile(
      {super.key, required this.articuloPrecioTarifa});

  final ArticuloPrecioTarifa articuloPrecioTarifa;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  articuloPrecioTarifa.tarifaDescripcion ?? '',
                ),
                if (articuloPrecioTarifa.cantidadDesDe != 1)
                  Text(
                    '≥ ${numberFormatCantidades(articuloPrecioTarifa.cantidadDesDe)}',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: Theme.of(context).textTheme.caption?.color),
                  ),
              ],
            ),
          ),
          Text(
            formatPrecios(
                precio: articuloPrecioTarifa.precio,
                tipoPrecio: articuloPrecioTarifa.tipoPrecio),
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: Theme.of(context).textTheme.caption?.color),
          ),
        ],
      ),
    );
  }
}
