import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/column_field_text_detail.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/datos_extra_row.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/mobile_custom_separatos.dart';
import '../../../../core/routing/app_router.dart';
import '../../infrastructure/articulo_repository.dart';

class ArticuloDetallePage extends StatelessWidget {
  const ArticuloDetallePage({super.key, required this.articuloId});

  final String articuloId;

  @override
  Widget build(BuildContext context) {
    final params = {'articuloId': articuloId};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Articulo detalle'),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final articuloValue = ref.watch(articuloProvider(articuloId));
          return AsyncValueWidget<Articulo>(
            value: articuloValue,
            data: (articulo) => ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: [
                _ArticuloInfoContainer(articulo: articulo),
                const MobileCustomSeparators(
                    separatorTitle: 'Datos relacionados'),
                DatosExtraRow(
                  title: 'Ped. Ventas',
                  navigationTo: () => context.goNamed(
                      AppRoutes.articulosalesorder.name,
                      params: params),
                ),
                const Divider(),
                DatosExtraRow(
                  title: 'Últimos Precios',
                  navigationTo: () => context.goNamed(
                    AppRoutes.articuloultimoprecio.name,
                    params: params,
                  ),
                ),
                const Divider(),
                DatosExtraRow(
                  title: 'Componentes',
                  navigationTo: () => context.goNamed(
                    AppRoutes.articulocomponente.name,
                    params: params,
                  ),
                ),
                const Divider(),
                DatosExtraRow(
                  title: 'Grupos Netos',
                  navigationTo: () => context.goNamed(
                    AppRoutes.articulogruponeto.name,
                    params: params,
                  ),
                ),
                const Divider(),
                DatosExtraRow(
                  title: 'Tarifa Precio',
                  navigationTo: () => context.goNamed(
                    AppRoutes.articulotarifaprecio.name,
                    params: params,
                  ),
                ),
                const Divider(),
                DatosExtraRow(
                  title: 'Recambios',
                  navigationTo: () => context.goNamed(
                    AppRoutes.articulorecambio.name,
                    params: params,
                  ),
                ),
                const Divider(),
                DatosExtraRow(
                  title: 'Sustitutivos',
                  navigationTo: () => context.goNamed(
                    AppRoutes.articulosustitutivo.name,
                    params: params,
                  ),
                ),
                const Divider(),
                DatosExtraRow(
                  title: 'Imágenes',
                  navigationTo: () => context.goNamed(
                    AppRoutes.articuloimagen.name,
                    params: params,
                  ),
                ),
                const Divider(),
                DatosExtraRow(
                  title: 'Documentos',
                  navigationTo: () => context.goNamed(
                    AppRoutes.articulodocumento.name,
                    params: params,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _ArticuloInfoContainer extends StatelessWidget {
  const _ArticuloInfoContainer({required this.articulo});

  final Articulo articulo;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                color: Theme.of(context).colorScheme.secondaryContainer,
                child: Text(articulo.id,
                    style: Theme.of(context).textTheme.subtitle2),
              ),
              const Spacer(),
            ],
          ),
        ),
        if (articulo.imagenPrincipal != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _ArticuloPrincipalImage(
              articuloId: articulo.id,
              imagenPrincipal: articulo.imagenPrincipal!,
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Text(
            getDescriptionInLocalLanguage(articulo: articulo),
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        if (getSummaryInLocalLanguage(articulo: articulo) != null)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              getSummaryInLocalLanguage(articulo: articulo)!,
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Text(
            (articulo.subfamilia != null)
                ? '${articulo.familia?.descripcion}/${articulo.subfamilia?.descripcion}'
                : '${articulo.familia?.descripcion}',
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        const MobileCustomSeparators(separatorTitle: 'Stock y Entregas'),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (articulo.stockDisponible != null)
                Expanded(
                  flex: 1,
                  child: ColumnFieldTextDetalle(
                      fieldTitleValue: 'Stock',
                      value: numberFormat(articulo.stockDisponible!)),
                ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    if (articulo.comprasEntregaCantidad1 != null &&
                        articulo.comprasEntregaCantidad1 != 0)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Entrega 1',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .color),
                          ),
                          if (articulo.comprasEntregaCantidad1 != null &&
                              articulo.comprasEntregaCantidad1 != 0)
                            gapH8,
                          if (articulo.comprasEntregaCantidad2 != null &&
                              articulo.comprasEntregaCantidad2 != 0)
                            Text(
                              'Entrega 2',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color),
                            ),
                          if (articulo.comprasEntregaCantidad2 != null &&
                              articulo.comprasEntregaCantidad2 != 0)
                            gapH8,
                          if (articulo.comprasEntregaCantidad3 != null &&
                              articulo.comprasEntregaCantidad3 != 0)
                            Text(
                              'Entrega 3',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color),
                            ),
                          if (articulo.comprasEntregaCantidad3 != null &&
                              articulo.comprasEntregaCantidad3 != 0)
                            gapH8,
                          if (articulo.comprasEntregaCantidadMas3 != null &&
                              articulo.comprasEntregaCantidadMas3 != 0)
                            Text(
                              '+',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color),
                            ),
                        ],
                      ),
                    const Spacer(),
                    Column(
                      children: [
                        if (articulo.comprasEntregaCantidad1 != null &&
                            articulo.comprasEntregaCantidad1 != 0)
                          Text(numberFormat(articulo.comprasEntregaCantidad1!)),
                        if (articulo.comprasEntregaCantidad1 != null &&
                            articulo.comprasEntregaCantidad1 != 0)
                          gapH8,
                        if (articulo.comprasEntregaCantidad2 != null &&
                            articulo.comprasEntregaCantidad2 != 0)
                          Text(numberFormat(articulo.comprasEntregaCantidad2!)),
                        if (articulo.comprasEntregaCantidad2 != null &&
                            articulo.comprasEntregaCantidad2 != 0)
                          gapH8,
                        if (articulo.comprasEntregaCantidad3 != null &&
                            articulo.comprasEntregaCantidad3 != 0)
                          Text(numberFormat(articulo.comprasEntregaCantidad3!)),
                        if (articulo.comprasEntregaCantidad3 != null &&
                            articulo.comprasEntregaCantidad3 != 0)
                          gapH8,
                        if (articulo.comprasEntregaCantidadMas3 != null &&
                            articulo.comprasEntregaCantidadMas3 != 0)
                          Text(numberFormat(
                              articulo.comprasEntregaCantidadMas3!)),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        if (articulo.comprasEntregaFecha1 != null)
                          Text(
                            dateFormatter(
                              articulo.comprasEntregaFecha1!
                                  .toLocal()
                                  .toIso8601String(),
                            ),
                          ),
                        if (articulo.comprasEntregaFecha1 != null) gapH8,
                        if (articulo.comprasEntregaFecha2 != null)
                          Text(dateFormatter(
                            articulo.comprasEntregaFecha2!
                                .toLocal()
                                .toIso8601String(),
                          )),
                        if (articulo.comprasEntregaFecha2 != null) gapH8,
                        if (articulo.comprasEntregaFecha3 != null)
                          Text(dateFormatter(
                            articulo.comprasEntregaFecha3!
                                .toLocal()
                                .toIso8601String(),
                          )),
                        if (articulo.comprasEntregaFecha3 != null) gapH8,
                        const Text(
                          '',
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
        const MobileCustomSeparators(separatorTitle: 'Datos logística'),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColumnFieldTextDetalle(
                  fieldTitleValue: 'Cantidad subcaja',
                  value: numberFormat(articulo.unidadesSubcaja)),
              ColumnFieldTextDetalle(
                  fieldTitleValue: 'Cantidad caja',
                  value: numberFormat(articulo.unidadesCaja)),
              ColumnFieldTextDetalle(
                  fieldTitleValue: 'Cantidad palet',
                  value: numberFormat(articulo.unidadesPalet)),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ColumnFieldTextDetalle(
                      fieldTitleValue: 'Peso(kg)',
                      value: numberFormat(articulo.pesoKg),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: ColumnFieldTextDetalle(
                        fieldTitleValue: 'Medidas(cm)',
                        value:
                            '${numberFormat(articulo.altoCm)}x${numberFormat(articulo.largoCm)}x${numberFormat(articulo.anchoCm)}'),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
        const MobileCustomSeparators(separatorTitle: 'Otros datos'),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColumnFieldTextDetalle(
                fieldTitleValue: 'Página en catalogo/2ªEdición',
                value: Text(
                  (articulo.paginaEnCatalgo != null &&
                          articulo.paginaEnCatalgo2 != null)
                      ? '${articulo.paginaEnCatalgo} / ${articulo.paginaEnCatalgo2}'
                      : (articulo.paginaEnCatalgo != null)
                          ? articulo.paginaEnCatalgo ?? ''
                          : '',
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(child: Text('En Catálogo')),
                        Checkbox(
                          visualDensity:
                              const VisualDensity(vertical: -4, horizontal: -4),
                          value: articulo.enCatalogo,
                          onChanged: null,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 50),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(child: Text('Descatalogado')),
                        Checkbox(
                          visualDensity:
                              const VisualDensity(vertical: -4, horizontal: -4),
                          value: articulo.descatalogado,
                          onChanged: null,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(child: Text('Activo Web')),
                        Checkbox(
                          visualDensity:
                              const VisualDensity(vertical: -4, horizontal: -4),
                          value: articulo.activoApp,
                          onChanged: null,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 50),
                  const Spacer(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _ArticuloPrincipalImage extends ConsumerWidget {
  const _ArticuloPrincipalImage(
      {required this.articuloId, required this.imagenPrincipal});

  final String articuloId;
  final String imagenPrincipal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state =
        ref.watch(articuloImageFileProvider('$articuloId/$imagenPrincipal'));

    return state.when(
      data: (imageFile) => (imageFile != null)
          ? Image.memory(
              imageFile,
              height: 175,
              width: 400,
              fit: BoxFit.contain,
            )
          : Image.asset(
              height: 175,
              width: 400,
              fit: BoxFit.contain,
              'assets/image-placeholder.png',
            ),
      error: (e, _) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            height: 175,
            width: 400,
            fit: BoxFit.contain,
            'assets/image-placeholder.png',
          ),
          ErrorMessageWidget(e.toString()),
        ],
      ),
      loading: () => Image.asset(
        height: 175,
        width: 400,
        fit: BoxFit.fitHeight,
        'assets/image-placeholder.png',
      ),
    );
  }
}
