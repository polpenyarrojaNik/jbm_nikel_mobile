import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_tarifa_precio.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class ArticuloTarifaPrecioPage extends ConsumerWidget {
  const ArticuloTarifaPrecioPage({super.key, required this.articuloId});

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloTarifaPrecioListProvider(articuloId));
    return Scaffold(
      appBar: AppBar(title: const Text('Tarifa Precio')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: state.maybeWhen(
          orElse: () => const ProgressIndicatorWidget(),
          error: (e, st) => ErrorMessageWidget(e.toString()),
          data: (articuloTarifaPrecioList) =>
              (articuloTarifaPrecioList.isNotEmpty)
                  ? ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, _) => const Divider(),
                      itemBuilder: (context, i) => ArticuloTarifaPrecioTile(
                        articuloTarifaPrecio: articuloTarifaPrecioList[i],
                      ),
                      itemCount: articuloTarifaPrecioList.length,
                    )
                  : const Center(child: Text('No Results')),
        ),
      ),
    );
  }
}

class ArticuloTarifaPrecioTile extends StatelessWidget {
  const ArticuloTarifaPrecioTile(
      {super.key, required this.articuloTarifaPrecio});

  final ArticuloTarifaPrecio articuloTarifaPrecio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(articuloTarifaPrecio.tarifaId),
          const SizedBox(height: 5),
          Text(articuloTarifaPrecio.tarifaDescripcion ?? ''),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  'Precio: ${numberFormat(articuloTarifaPrecio.precio)}x${articuloTarifaPrecio.tipoPrecio}',
                  style: Theme.of(context).textTheme.caption),
              Text(
                  'Cantidad des de: ${numberFormat(articuloTarifaPrecio.cantidadDesDe)}',
                  style: Theme.of(context).textTheme.caption),
            ],
          ),
        ],
      ),
    );
  }
}
