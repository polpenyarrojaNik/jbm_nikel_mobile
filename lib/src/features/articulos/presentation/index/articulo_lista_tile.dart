import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/articulo.dart';

class ArticuloListaTile extends StatelessWidget {
  const ArticuloListaTile({super.key, required this.articulo});

  final Articulo articulo;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: listPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                articulo.id,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                '${numberFormatCantidades(articulo.stockDisponible)} ${S.of(context).unidad}',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
          Text(
            getDescriptionArticuloInLocalLanguage(articulo: articulo),
          ),
          Text(
            (articulo.subfamilia != null)
                ? '${articulo.familia?.descripcion}/${articulo.subfamilia?.descripcion}'
                : '${articulo.familia?.descripcion}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
