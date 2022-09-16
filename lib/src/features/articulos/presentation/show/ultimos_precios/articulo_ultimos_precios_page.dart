import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/show/ultimos_precios/articulo_ultimos_precios_state.dart';

import '../../../../../core/helpers/debouncer.dart';
import '../../../../../core/helpers/formatters.dart';
import '../../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
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
      appBar: CustomSearchAppBar(
        title: 'Últimos Precios',
        searchTitle: 'Search últimos precios...',
        onChanged: (searchText) {
          _debouncer.run(() {
            ref
                .read(articuloUltimosPreciosSearchQueryStateProvider.notifier)
                .state = searchText;
            ref
                .read(
                    articuloUltimosPreciosPaginationQueryStateProvider.notifier)
                .state = 1;
          });
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: state.when(
            data: (ultimosPreciosLista) => (ultimosPreciosLista.isEmpty)
                ? const Center(child: Text('Sin resultado'))
                : ListView.separated(
                    controller: _scrollController,
                    separatorBuilder: (context, i) => const Divider(),
                    itemBuilder: (context, i) => UltimosPreciosTile(
                        ultimosPrecios: ultimosPreciosLista[i]),
                    itemCount: ultimosPreciosLista.length,
                  ),
            error: (e, _) => ErrorMessageWidget(e.toString()),
            loading: () => const ProgressIndicatorWidget()),
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 65,
              child: Text(
                dateFormatter(ultimosPrecios.fecha.toLocal().toIso8601String()),
                style: Theme.of(context).textTheme.caption?.copyWith(
                    color: Theme.of(context).textTheme.bodyText2?.color),
              ),
            ),
            const VerticalDivider(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '#${ultimosPrecios.clienteId} ${ultimosPrecios.nombreCliente ?? ''}',
                        ),
                      ],
                    ),
                  ),
                  Text(
                    formatPrecioYDescuento(
                      precio: ultimosPrecios.precioDivisa,
                      tipoPrecio: ultimosPrecios.tipoPrecio,
                      descuento1: ultimosPrecios.descuento1,
                      descuento2: ultimosPrecios.descuento2,
                      descuento3: ultimosPrecios.descuento3,
                    ),
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: Theme.of(context).textTheme.caption?.color),
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
