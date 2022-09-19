import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo_grupo_neto.dart';
import '../../infrastructure/articulo_repository.dart';

class ArticuloGrupoNetoPage extends ConsumerWidget {
  const ArticuloGrupoNetoPage(
      {super.key, required this.articuloId, required this.description});

  final String articuloId;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloGrupoNetoPriceListProvider(articuloId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grupos Netos'),
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
          data: (articuloGrupoNetoList) => (articuloGrupoNetoList.isNotEmpty)
              ? ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, _) => const Divider(),
                  itemBuilder: (context, i) => ArticuloGrupoNetoTile(
                    articuloGrupoNeto: articuloGrupoNetoList[i],
                  ),
                  itemCount: articuloGrupoNetoList.length,
                )
              : const Center(
                  child: Text('Sin resultados'),
                ),
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
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  articuloGrupoNeto.grupoNetoId,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                if (articuloGrupoNeto.grupoNetoDescripcion != null)
                  Text(
                    articuloGrupoNeto.grupoNetoDescripcion!,
                  ),
                if (articuloGrupoNeto.cantidadDesDe != 1)
                  Text(
                    '≥ ${numberFormatCantidades(articuloGrupoNeto.cantidadDesDe)}',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: Theme.of(context).textTheme.caption?.color),
                  ),
              ],
            ),
          ),
          Text(
            formatPrecios(
                precio: articuloGrupoNeto.precio,
                tipoPrecio: articuloGrupoNeto.tipoPrecio),
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
