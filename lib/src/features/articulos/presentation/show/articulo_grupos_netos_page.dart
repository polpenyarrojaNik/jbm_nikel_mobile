import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/articulo_grupo_neto.dart';
import '../../infrastructure/articulo_repository.dart';

@RoutePage()
class ArticuloGrupoNetoPage extends ConsumerWidget {
  const ArticuloGrupoNetoPage({
    super.key,
    required this.articuloId,
    required this.description,
  });

  final String articuloId;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloGrupoNetoPriceListProvider(articuloId));
    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).articulo_show_articuloGruposNetos_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(entityId: articuloId, subtitle: description),
          gapH8,
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) => ErrorMessageWidget(e.toString()),
            data:
                (articuloGrupoNetoList) =>
                    (articuloGrupoNetoList.isNotEmpty)
                        ? Expanded(
                          child: ListView.separated(
                            itemCount: articuloGrupoNetoList.length,
                            itemBuilder:
                                (context, i) => ArticuloGrupoNetoTile(
                                  articuloGrupoNeto: articuloGrupoNetoList[i],
                                ),
                            separatorBuilder: (context, i) => const Divider(),
                          ),
                        )
                        : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text(S.of(context).sinResultados)],
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
      padding: listPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(articuloGrupoNeto.grupoNetoId),
              Text(
                formatPrecios(
                  precio: articuloGrupoNeto.precio,
                  tipoPrecio: articuloGrupoNeto.tipoPrecio,
                ),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).textTheme.bodySmall?.color,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                articuloGrupoNeto.grupoNetoDescripcion,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              if (articuloGrupoNeto.cantidadDesde != 1) const Spacer(),
              if (articuloGrupoNeto.cantidadDesde != 1)
                Text(
                  '≥ ${numberFormatCantidades(articuloGrupoNeto.cantidadDesde)} ${S.of(context).unidad}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).textTheme.bodySmall?.color,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
