import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/app_bar_datos_relacionados.dart';

import '../../../../../generated/l10n.dart';
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
      body: CustomScrollView(
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).articulo_show_articuloGruposNetos_titulo,
            entityId: articuloId,
            subtitle: description,
          ),
          state.maybeWhen(
            orElse: () => const SliverFillRemaining(
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (articuloGrupoNetoList) => (articuloGrupoNetoList.isNotEmpty)
                ? SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: articuloGrupoNetoList.length,
                        (context, i) => ArticuloGrupoNetoTile(
                          articuloGrupoNeto: articuloGrupoNetoList[i],
                        ),
                      ),
                    ))
                : SliverFillRemaining(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(S.of(context).sinResultados),
                      ],
                    ),
                  ),
          ),
        ],
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
      child: Column(
        children: [
          Row(
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
                    Text(
                      articuloGrupoNeto.grupoNetoDescripcion,
                    ),
                    if (articuloGrupoNeto.cantidadDesde != 1)
                      Text(
                        '≥ ${numberFormatCantidades(articuloGrupoNeto.cantidadDesde)}',
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
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Theme.of(context).textTheme.caption?.color),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
