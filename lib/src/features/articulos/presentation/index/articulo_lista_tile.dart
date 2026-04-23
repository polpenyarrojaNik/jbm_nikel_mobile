import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/common_chip_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../domain/articulo.dart';

class ArticuloListaTile extends StatelessWidget {
  const ArticuloListaTile({super.key, required this.articulo});

  final Articulo articulo;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: kPaddingList,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(articulo.id, style: Theme.of(context).textTheme.titleSmall),
              Row(
                children: [
                  if (articulo.descatalogado) ...[
                    CommonChipWidget(
                      value: 'DESCATALOGADO',

                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.errorContainer,
                      customTextColor: Theme.of(
                        context,
                      ).colorScheme.onSurfaceVariant,
                    ),
                    const Gap(4),
                  ],
                  Text(
                    '${numberFormatCantidades(articulo.stockDisponible)} ${S.of(context).unidad}',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ],
          ),
          Text(getDescriptionArticuloInLocalLanguage(articulo: articulo)),
          Text(
            (articulo.familia != null && articulo.subfamilia != null)
                ? '${articulo.familia!.descripcion}/${articulo.subfamilia!.descripcion}'
                : (articulo.familia?.descripcion ??
                      S.of(context).unknownFamily),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
