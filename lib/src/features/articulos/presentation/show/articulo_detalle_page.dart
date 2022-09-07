import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/column_field_text_detail.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo.dart';

import '../../../../core/presentation/common_widgets/buttons_row_bar_widget.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/mobile_custom_separatos.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/common_widgets/text_button_widget.dart';
import '../../../../core/routing/app_router.dart';
import '../../infrastructure/articulo_repository.dart';
import 'articulo_componente_container.dart';
import 'articulo_documento_container.dart';
import 'articulo_imagen_container.dart';
import 'articulo_grupos_netos_container.dart';
import 'articulo_tarifa_precio_container.dart';
import 'articulo_recambio_container.dart';
import 'articulo_sustitutivo_container.dart';

class ArticuloDetallePage extends StatelessWidget {
  const ArticuloDetallePage({Key? key, required this.articuloId})
      : super(key: key);

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
          final stateUltimaSync = ref.watch(articuloUltimaSyncProvider);
          return AsyncValueWidget<Articulo>(
            value: articuloValue,
            data: (articulo) => DefaultTabController(
              length: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ButtonsRowBarWidget(
                    textButtonsList: [
                      TextButtonWidget(
                          titleText: 'Ped. Ventas',
                          entityId: articuloId,
                          appRouteValue: AppRoute.articulosalesorder,
                          params: params),
                      TextButtonWidget(
                          titleText: '¿Devoluciones?',
                          entityId: articuloId,
                          appRouteValue: AppRoute.articuloreturns,
                          params: params),
                      TextButtonWidget(
                          titleText: 'Últimos Precios',
                          entityId: articuloId,
                          appRouteValue: AppRoute.articulolastprecio,
                          params: params),
                      TextButtonWidget(
                          titleText: '¿Estadísticas?',
                          entityId: articuloId,
                          appRouteValue: AppRoute.articulostats,
                          params: params),
                    ],
                  ),
                  const Divider(),
                  Expanded(
                    child: NestedScrollView(
                      scrollDirection: Axis.vertical,
                      headerSliverBuilder: (context, innerBoxIsScrolled) => [
                        SliverToBoxAdapter(
                          child: stateUltimaSync.when(
                              data: (ultimaSyncDate) => UltimaSyncDateWidget(
                                  ultimaSyncDate: ultimaSyncDate),
                              error: (e, _) => ErrorMessageWidget(e.toString()),
                              loading: () => const ProgressIndicatorWidget()),
                        ),
                        SliverToBoxAdapter(
                          child: _ArticuloInfoContainer(articulo: articulo),
                        ),
                        const SliverToBoxAdapter(
                          child: TabBar(
                            labelColor: Colors.black,
                            tabs: [
                              Tab(icon: Icon(Icons.local_shipping, size: 16)),
                              Tab(icon: Icon(Icons.person, size: 16)),
                              Tab(icon: Icon(Icons.group, size: 16)),
                              Tab(icon: Icon(Icons.group, size: 16)),
                              Tab(icon: Icon(Icons.local_shipping, size: 16)),
                              Tab(icon: Icon(Icons.image, size: 16)),
                              Tab(icon: Icon(Icons.attach_file, size: 16)),
                              Tab(icon: Icon(Icons.local_shipping, size: 16)),
                            ],
                          ),
                        )
                      ],
                      body: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        viewportFraction: 1,
                        children: [
                          ArticuloComponenteContainer(articuloId: articuloId),
                          ArticuloTarifaPrecioContainer(articuloId: articuloId),
                          ArticuloGrupoNetoContainer(articuloId: articuloId),
                          ArticuloSustitutivoContainer(articuloId: articuloId),
                          ArticuloRecambioContainer(articuloId: articuloId),
                          ArticuloImagenContainer(articuloId: articuloId),
                          ArticuloDocumentContainer(articuloId: articuloId),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ArticuloInfoContainer extends StatelessWidget {
  const _ArticuloInfoContainer({Key? key, required this.articulo})
      : super(key: key);

  final Articulo articulo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (articulo.imagenPrincipal != null)
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: _ArticuloPrincipalImage(
                  articuloId: articulo.id,
                  imagenPrincipal: articulo.imagenPrincipal!,
                ),
              )
            : Image.asset(
                height: 150,
                fit: BoxFit.fitHeight,
                'assets/image-placeholder.png',
              ),
        const MobileCustomSeparators(separatorTitle: 'Datos generales'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColumnFieldTextDetalle(
                  fieldTitleValue: 'Código', value: articulo.id),
              ColumnFieldTextDetalle(
                  fieldTitleValue: 'Descripción', value: articulo.descripcion),
              if (articulo.familia != null || articulo.subfamilia != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (articulo.familia != null)
                      Expanded(
                        child: ColumnFieldTextDetalle(
                            fieldTitleValue: 'Familia',
                            value: articulo.familia!.descripcion),
                      ),
                    const Spacer(),
                    if (articulo.subfamilia != null)
                      Expanded(
                        child: ColumnFieldTextDetalle(
                            fieldTitleValue: 'Subamilia',
                            value: articulo.subfamilia!.descripcion),
                      ),
                    const Spacer(),
                  ],
                ),
              const Divider(),
              ColumnFieldTextDetalle(
                fieldTitleValue: 'Entrega 1',
                value: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.shopping_cart_outlined, size: 18),
                        Text(articulo.comprasEntregaCantidad1?.toString() ??
                            '0.0'),
                      ],
                    ),
                    const Spacer(),
                    if (articulo.comprasEntregaFecha1 != null)
                      Row(
                        children: [
                          const Icon(Icons.calendar_month, size: 18),
                          Text(
                            dateFormatter(articulo.comprasEntregaFecha1!
                                .toIso8601String()),
                          ),
                        ],
                      ),
                    const Spacer(),
                  ],
                ),
              ),
              ColumnFieldTextDetalle(
                fieldTitleValue: 'Entrega 2',
                value: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.shopping_cart_outlined, size: 18),
                        Text(articulo.comprasEntregaCantidad2?.toString() ??
                            '0.0'),
                      ],
                    ),
                    const Spacer(),
                    if (articulo.comprasEntregaFecha2 != null)
                      Row(
                        children: [
                          const Icon(Icons.calendar_month, size: 18),
                          Text(
                            dateFormatter(articulo.comprasEntregaFecha2!
                                .toIso8601String()),
                          ),
                        ],
                      ),
                    const Spacer(),
                  ],
                ),
              ),
              ColumnFieldTextDetalle(
                fieldTitleValue: 'Entrega 3',
                value: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.shopping_cart_outlined, size: 18),
                        Text(articulo.comprasEntregaCantidad3?.toString() ??
                            '0.0'),
                      ],
                    ),
                    const Spacer(),
                    if (articulo.comprasEntregaFecha3 != null)
                      Row(
                        children: [
                          const Icon(Icons.calendar_month, size: 18),
                          Text(
                            dateFormatter(articulo.comprasEntregaFecha3!
                                .toIso8601String()),
                          ),
                        ],
                      ),
                    const Spacer(),
                  ],
                ),
              ),
              ColumnFieldTextDetalle(
                fieldTitleValue: '+',
                value: Row(
                  children: [
                    const Icon(Icons.shopping_cart_outlined, size: 18),
                    Text(articulo.comprasEntregaCantidadMas3?.toString() ??
                        '0.0'),
                  ],
                ),
              ),
              const Divider(),
              if (articulo.stockDisponible != null)
                ColumnFieldTextDetalle(
                    fieldTitleValue: 'Stock',
                    value: articulo.stockDisponible.toString()),
            ],
          ),
        ),
        const MobileCustomSeparators(separatorTitle: 'Logística'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColumnFieldTextDetalle(
                  fieldTitleValue: 'Subcaja',
                  value: articulo.unidadesSubcaja.toString()),
              ColumnFieldTextDetalle(
                  fieldTitleValue: 'Caja',
                  value: articulo.unidadesCaja.toString()),
              ColumnFieldTextDetalle(
                  fieldTitleValue: 'Palet',
                  value: articulo.unidadesPalet.toString()),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ColumnFieldTextDetalle(
                        fieldTitleValue: 'Peso(kg)',
                        value: articulo.stockDisponible.toString()),
                  ),
                  const Spacer(),
                  Expanded(
                    child: ColumnFieldTextDetalle(
                        fieldTitleValue: 'Largo(cm)',
                        value: articulo.largoCm.toString()),
                  ),
                  const Spacer(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ColumnFieldTextDetalle(
                        fieldTitleValue: 'Alto(cm)',
                        value: articulo.altoCm.toString()),
                  ),
                  const Spacer(),
                  Expanded(
                    child: ColumnFieldTextDetalle(
                        fieldTitleValue: 'Ancho(cm)',
                        value: articulo.anchoCm.toString()),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
        const MobileCustomSeparators(separatorTitle: 'JBM'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColumnFieldTextDetalle(
                fieldTitleValue: 'Pád.Catalogo/2ªEdi.',
                value: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(articulo.paginaEnCatalgo ?? ''),
                    const Spacer(),
                    Text(articulo.paginaEnCatalgo ?? ''),
                    const Spacer(),
                  ],
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
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(child: Text('Activo APP')),
                        Checkbox(
                          visualDensity:
                              const VisualDensity(vertical: -4, horizontal: -4),
                          value: articulo.activoWeb,
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
                        const Flexible(child: Text('Descatalogado compras')),
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
              const Divider(),
              ColumnFieldTextDetalle(
                  fieldTitleValue: 'Resumen', value: articulo.resumen ?? ''),
            ],
          ),
        )
      ],
    );
  }
}

class _ArticuloPrincipalImage extends ConsumerWidget {
  const _ArticuloPrincipalImage(
      {Key? key, required this.articuloId, required this.imagenPrincipal})
      : super(key: key);

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
      error: (e, _) => SizedBox(
        width: 200,
        child: ErrorMessageWidget(e.toString()),
      ),
      loading: () => Image.asset(
        height: 150,
        width: 200,
        fit: BoxFit.fitHeight,
        'assets/image-placeholder.png',
      ),
    );
  }
}
