import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/custom_search_app_bar.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/show/ultimos_precios/articulo_ultimos_precios_search_controller.dart';

import '../../../../../../generated/l10n.dart';
import '../../../../../core/helpers/debouncer.dart';
import '../../../../../core/helpers/formatters.dart';
import '../../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../../core/presentation/theme/app_sizes.dart';
import '../../../../estadisticas/domain/estadisticas_ultimos_precios.dart';
import '../../../infrastructure/articulo_repository.dart';
import '../../index/articulo_list_shimmer.dart';

class ArticuloUltimosPreciosPage extends ConsumerWidget {
  ArticuloUltimosPreciosPage(
      {super.key, required this.articuloId, required this.description});

  final String articuloId;
  final String description;

  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateClienteUltimosPreciosListCount = ref.watch(
        articuloUltimosPreciosIndexScreenControllerProvider(
            articuloId: articuloId));

    ref.listen<AsyncValue>(
      articuloUltimosPreciosIndexScreenControllerProvider(
          articuloId: articuloId),
      (_, state) => state.showAlertDialogOnError(context),
    );

    return Scaffold(
      appBar: CustomSearchAppBar(
        isSearchingFirst: false,
        title: S.of(context).ultimosPrecios_titulo,
        searchTitle: S.of(context).ultimosPrecios_buscarUltimosPrecios,
        onChanged: (searchText) {
          _debouncer.run(() {
            ref
                .read(articuloUltimosPreciosSearchQueryStateProvider.notifier)
                .state = searchText;
          });
        },
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: articuloId,
            subtitle: description,
          ),
          gapH8,
          stateClienteUltimosPreciosListCount.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            data: (count) => Expanded(
              child: ListView.separated(
                itemCount: count,
                itemBuilder: (context, i) => ref
                    .watch(
                      ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider(
                        articuloId: articuloId,
                        page: (i ~/ ArticuloRepository.pageSize),
                      ),
                    )
                    .maybeWhen(
                      orElse: () => const ArticuloListShimmer(),
                      data: (ultimosPreciosList) => _UltimosPreciosTile(
                        ultimosPrecios:
                            ultimosPreciosList[i % ArticuloRepository.pageSize],
                      ),
                    ),
                separatorBuilder: (context, i) => const Divider(),
              ),
            ),
            error: (e, _) => ErrorMessageWidget(e.toString()),
            loading: () => const ProgressIndicatorWidget(),
          ),
        ],
      ),
    );
  }
}

class _UltimosPreciosTile extends StatelessWidget {
  const _UltimosPreciosTile({required this.ultimosPrecios});

  final EstadisticasUltimosPrecios ultimosPrecios;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: listPadding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    dateFormatter(
                        ultimosPrecios.fecha.toLocal().toIso8601String()),
                    style: Theme.of(context).textTheme.caption?.copyWith(
                        color: Theme.of(context).textTheme.bodyText2?.color),
                  ),
                ],
              ),
            ),
            const VerticalDivider(),
            Expanded(
              flex: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${S.of(context).pedido_show_pedidoVentaDetalle_precio}: ${formatPrecioYDescuento(
                          precio: ultimosPrecios.precioDivisa,
                          tipoPrecio: ultimosPrecios.tipoPrecio,
                          descuento1: ultimosPrecios.descuento1,
                          descuento2: ultimosPrecios.descuento2,
                          descuento3: ultimosPrecios.descuento3,
                        )}',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Text(
                          '${numberFormatCantidades(ultimosPrecios.cantidad.toDouble())} ${S.of(context).unidad}'),
                    ],
                  ),
                  gapH8,
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          '#${ultimosPrecios.clienteId} ${ultimosPrecios.nombreCliente}',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
