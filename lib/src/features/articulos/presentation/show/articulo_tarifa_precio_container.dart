import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_tarifa_precio.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class ArticuloTarifaPrecioContainer extends ConsumerWidget {
  const ArticuloTarifaPrecioContainer({Key? key, required this.articuloId})
      : super(key: key);

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloTarifaPrecioListProvider(articuloId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (articuloTarifaPrecioList) => ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => ArticuloTarifaPrecioTile(
            articuloTarifaPrecio: articuloTarifaPrecioList[i],
          ),
          itemCount: articuloTarifaPrecioList.length,
        ),
      ),
    );
  }
}

class ArticuloTarifaPrecioTile extends StatelessWidget {
  const ArticuloTarifaPrecioTile({Key? key, required this.articuloTarifaPrecio})
      : super(key: key);

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
                  '${articuloTarifaPrecio.precio}/${articuloTarifaPrecio.tipoPrecio}'),
              Text(articuloTarifaPrecio.cantidadDesDe.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
