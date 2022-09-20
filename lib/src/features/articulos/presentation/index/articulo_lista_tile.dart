import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/routing/app_router.dart';
import '../../domain/articulo.dart';

class ArticuloListaTile extends StatelessWidget {
  const ArticuloListaTile({super.key, required this.articulo});

  final Articulo articulo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToArticuloDetalPage(context, articulo.id),
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  articulo.id,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                if (articulo.stockDisponible != null)
                  Text(
                    '${numberFormatCantidades(articulo.stockDisponible!)} ${(articulo.stockDisponible == 1) ? S.of(context).unidad : S.of(context).unidades}',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
              ],
            ),
            Text(
              getDescriptionInLocalLanguage(articulo: articulo),
            ),
            Text(
              (articulo.subfamilia != null)
                  ? '${articulo.familia?.descripcion}/${articulo.subfamilia?.descripcion}'
                  : '${articulo.familia?.descripcion}',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }

  void navigateToArticuloDetalPage(BuildContext context, String id) {
    final params = {'articuloId': articulo.id};

    context.goNamed(AppRoutes.articuloshow.name, params: params);
  }
}
