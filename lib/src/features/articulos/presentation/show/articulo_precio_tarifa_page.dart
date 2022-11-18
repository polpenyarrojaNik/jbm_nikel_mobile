import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_precio_tarifa.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';

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
        title: Text(S.of(context).articulo_show_articuloPreciosTarifa_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: articuloId,
            subtitle: description,
          ),
          gapH8,
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) => ErrorMessageWidget(e.toString()),
            data: (articuloPrecioTarifaList) =>
                (articuloPrecioTarifaList.isNotEmpty)
                    ? Expanded(
                        child: ListView.separated(
                          itemCount: articuloPrecioTarifaList.length,
                          itemBuilder: (context, i) => ArticuloPrecioTarifaTile(
                            articuloPrecioTarifa: articuloPrecioTarifaList[i],
                          ),
                          separatorBuilder: (context, i) => const Divider(),
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(S.of(context).sinResultados),
                        ],
                      ),
          ),
        ],
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
      padding: listPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (articuloPrecioTarifa.tarifaDescripcion != null)
                  Text(
                    articuloPrecioTarifa.tarifaDescripcion!,
                  ),
                if (articuloPrecioTarifa.cantidadDesde != 1)
                  Text(
                    '≥ ${numberFormatCantidades(articuloPrecioTarifa.cantidadDesde)} ${S.of(context).unidad}',
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
