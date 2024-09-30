import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../generated/l10n.dart';
import '../../../../../core/helpers/debouncer.dart';
import '../../../../../core/helpers/formatters.dart';
import '../../../../../core/presentation/common_widgets/async_value_ui.dart';
import '../../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../../core/presentation/theme/app_sizes.dart';
import '../../../../estadisticas/domain/estadisticas_ultimos_precios.dart';
import '../../../infrastructure/articulo_repository.dart';
import '../../index/articulo_list_shimmer.dart';
import 'articulo_ultimos_precios_search_controller.dart';

@RoutePage()
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

    ref.listen<AsyncValue<void>>(
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
    return Padding(
      padding: listPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '#${ultimosPrecios.clienteId}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              gapW16,
              Flexible(
                child: Text(
                  '${ultimosPrecios.nombreCliente}',
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dateFormatter(ultimosPrecios.fecha.toLocal().toIso8601String()),
              ),
              gapW16,
              Text(
                  '${numberFormatCantidades(ultimosPrecios.cantidad.toDouble())} ${S.of(context).unidad}'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                formatPrecioYDescuento(
                  precio: ultimosPrecios.precioDivisa,
                  tipoPrecio: ultimosPrecios.tipoPrecio,
                  descuento1: ultimosPrecios.descuento1,
                  descuento2: ultimosPrecios.descuento2,
                  descuento3: ultimosPrecios.descuento3,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
