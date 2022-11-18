import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/custom_search_app_bar.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/index/articulo_list_shimmer.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/ultimos_precios/cliente_ultimos_precios_search_controller.dart';

import '../../../../../../generated/l10n.dart';
import '../../../../../core/helpers/debouncer.dart';
import '../../../../../core/helpers/formatters.dart';
import '../../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../../core/presentation/theme/app_sizes.dart';
import '../../../../estadisticas/domain/estadisticas_ultimos_precios.dart';
import '../../../infrastructure/cliente_repository.dart';

class ClienteUltimosPreciosPage extends ConsumerWidget {
  ClienteUltimosPreciosPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateClienteUltimosPreciosListCount = ref.watch(
        clienteUltimosPreciosIndexScreenControllerProvider(
            clienteId: clienteId));

    ref.listen<AsyncValue>(
      clienteUltimosPreciosIndexScreenControllerProvider(clienteId: clienteId),
      (_, state) => state.showAlertDialogOnError(context),
    );

    return Scaffold(
      appBar: CustomSearchAppBar(
        title: S.of(context).ultimosPrecios_titulo,
        isSearchingFirst: false,
        searchTitle: S.of(context).ultimosPrecios_buscarUltimosPrecios,
        onChanged: (searchText) {
          _debouncer.run(() {
            ref
                .read(clienteUltimosPreciosSearchQueryStateProvider.notifier)
                .state = searchText;
          });
        },
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: '#$clienteId',
            subtitle: nombreCliente,
          ),
          gapH8,
          stateClienteUltimosPreciosListCount.maybeWhen(
              orElse: () => const ProgressIndicatorWidget(),
              data: (count) => Expanded(
                    child: ListView.separated(
                      itemCount: count,
                      itemBuilder: (context, i) => ref
                          .watch(
                            ClienteUltimosPreciosIndexScreenPaginatedControllerProvider(
                              clienteId: clienteId,
                              page: (i ~/ ClienteRepository.pageSize),
                            ),
                          )
                          .maybeWhen(
                            orElse: () => const ArticuloListShimmer(),
                            data: (ultimosPreciosList) => UltimosPreciosTile(
                              ultimosPrecios: ultimosPreciosList[
                                  i % ClienteRepository.pageSize],
                            ),
                          ),
                      separatorBuilder: (context, i) => const Divider(),
                    ),
                  )),
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
        padding: listPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '#${ultimosPrecios.articuloId}',
                  style: Theme.of(context).textTheme.caption,
                ),
                gapW16,
                Flexible(
                  child: Text(
                    '${(ultimosPrecios.descripcion != null) ? ultimosPrecios.descripcion : ''}',
                    style: Theme.of(context).textTheme.caption,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dateFormatter(
                      ultimosPrecios.fecha.toLocal().toIso8601String()),
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
      ),
    );
  }
}
