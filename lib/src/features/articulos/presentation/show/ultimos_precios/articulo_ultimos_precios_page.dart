import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/show/ultimos_precios/articulo_ultimos_precios_state.dart';

import '../../../../../../generated/l10n.dart';
import '../../../../../core/helpers/debouncer.dart';
import '../../../../../core/helpers/formatters.dart';
import '../../../../../core/presentation/common_widgets/app_bar_datos_relacionados.dart';
import '../../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../../core/presentation/theme/app_sizes.dart';
import '../../../../estadisticas/domain/estadisticas_ultimos_precios.dart';

class ArticuloUltimosPreciosPage extends ConsumerStatefulWidget {
  const ArticuloUltimosPreciosPage(
      {super.key, required this.articuloId, required this.description});

  final String articuloId;
  final String description;

  @override
  ConsumerState<ArticuloUltimosPreciosPage> createState() =>
      _ArticuloUltimosPreciosPageState();
}

class _ArticuloUltimosPreciosPageState
    extends ConsumerState<ArticuloUltimosPreciosPage> {
  final _scrollController = ScrollController();
  final _debouncer = Debouncer(milliseconds: 500);

  int page = 1;
  bool canLoadNextPage = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_dismissOnScreenKeyboard);
    _scrollController.addListener(() {
      final metrics = _scrollController.position;
      final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;

      if (canLoadNextPage && metrics.pixels >= limit) {
        canLoadNextPage = false;
        page++;
        ref
            .read(articuloUltimosPreciosPaginationQueryStateProvider.notifier)
            .state = page;
      }
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_dismissOnScreenKeyboard);
    super.dispose();
  }

  // When the search text field gets the focus, the keyboard appears on mobile.
  // This method is used to dismiss the keyboard when the user scrolls.
  void _dismissOnScreenKeyboard() {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref
        .watch(articuloUltimosPreciosSearchResultsProvider(widget.articuloId));

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          AppBarDatosRelacionados(
            title: S.of(context).ultimosPrecios_titulo,
            entityId: widget.articuloId,
            subtitle: widget.description,
            searchTitle: S.of(context).ultimosPrecios_buscarUltimosPrecios,
            onChanged: (searchText) {
              _debouncer.run(() {
                ref
                    .read(
                        articuloUltimosPreciosSearchQueryStateProvider.notifier)
                    .state = searchText;
                ref
                    .read(articuloUltimosPreciosPaginationQueryStateProvider
                        .notifier)
                    .state = 1;
              });
            },
          ),
          state.when(
            data: (ultimosPreciosList) => (ultimosPreciosList.isNotEmpty)
                ? SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: ultimosPreciosList.length,
                        (context, i) => UltimosPreciosTile(
                          ultimosPrecios: ultimosPreciosList[i],
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
            error: (e, _) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            loading: () => const SliverFillRemaining(
              child: ProgressIndicatorWidget(),
            ),
          ),
        ],
      ),
    );
  }
}

class UltimosPreciosTile extends StatelessWidget {
  const UltimosPreciosTile({super.key, required this.ultimosPrecios});

  final EstadisticasUltimosPrecios ultimosPrecios;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Column(
          children: [
            Row(
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
                            color:
                                Theme.of(context).textTheme.bodyText2?.color),
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
                          Flexible(
                            child: Text(
                              '#${ultimosPrecios.clienteId} ${ultimosPrecios.nombreCliente}',
                            ),
                          ),
                          Text(
                              '${numberFormatCantidades(ultimosPrecios.cantidad.toDouble())} ${S.of(context).unidad}'),
                        ],
                      ),
                      gapH8,
                      Text(
                        '${S.of(context).pedido_show_pedidoVentaDetalle_precio}: ${formatPrecioYDescuento(
                          precio: ultimosPrecios.precioDivisa,
                          tipoPrecio: ultimosPrecios.tipoPrecio,
                          descuento1: ultimosPrecios.descuento1,
                          descuento2: ultimosPrecios.descuento2,
                          descuento3: ultimosPrecios.descuento3,
                        )}',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
