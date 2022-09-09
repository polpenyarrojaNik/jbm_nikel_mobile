import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_grupo_neto.dart';
import '../../infrastructure/articulo_repository.dart';

class ArticuloGrupoNetoContainer extends ConsumerWidget {
  const ArticuloGrupoNetoContainer({super.key, required this.articuloId});

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloGrupoNetoPriceListProvider(articuloId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (articuloGrupoNetoList) => ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => ArticuloGrupoNetoTile(
            articuloGrupoNeto: articuloGrupoNetoList[i],
          ),
          itemCount: articuloGrupoNetoList.length,
        ),
      ),
    );
  }
}

class ArticuloGrupoNetoTile extends StatelessWidget {
  const ArticuloGrupoNetoTile({super.key, required this.articuloGrupoNeto});

  final ArticuloGrupoNeto articuloGrupoNeto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(articuloGrupoNeto.grupoNetoId),
              Text(articuloGrupoNeto.grupoNetoDescripcion ?? ''),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  '${numberFormat(articuloGrupoNeto.precio)}/${articuloGrupoNeto.tipoPrecio}'),
              Text(numberFormat(articuloGrupoNeto.cantidadDesDe)),
            ],
          ),
        ],
      ),
    );
  }
}
