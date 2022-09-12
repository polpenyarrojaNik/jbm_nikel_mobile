import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/column_field_text_detail.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo.dart';

import '../../../../core/presentation/common_widgets/buttons_row_bar_widget.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/mobile_custom_separatos.dart';
import '../../../../core/presentation/common_widgets/text_button_widget.dart';
import '../../../../core/routing/app_router.dart';
import '../../infrastructure/articulo_repository.dart';
import 'articulo_componente_container.dart';
import 'articulo_documento_container.dart';
import 'articulo_grupos_netos_container.dart';
import 'articulo_imagen_container.dart';
import 'articulo_recambio_container.dart';
import 'articulo_sustitutivo_container.dart';
import 'articulo_tarifa_precio_container.dart';

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
            data: (articulo) => DefaultTabController(
              length: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ButtonsRowBarWidget(
                    textButtonsList: [
                      TextButtonWidget(
                          titleText: 'Ped. Ventas',
                          entityId: articuloId,
                          appRouteValue: AppRoutes.articulosalesorder,
                          params: params),
                      TextButtonWidget(
                          titleText: 'Últimos Precios',
                          entityId: articuloId,
                          appRouteValue: AppRoutes.articulolastprecio,
                          params: params),
                    ],
                  ),
                  const Divider(),
                  Expanded(
                    child: NestedScrollView(
                      scrollDirection: Axis.vertical,
                      headerSliverBuilder: (context, innerBoxIsScrolled) => [
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
  const _ArticuloInfoContainer({required this.articulo});

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
                        Text((articulo.comprasEntregaCantidad1 != null)
                            ? numberFormat(articulo.comprasEntregaCantidad1!)
                            : '0.0'),
                      ],
                    ),
                    const Spacer(),
                    if (articulo.comprasEntregaFecha1 != null)
                      Row(
                        children: [
                          const Icon(Icons.calendar_month, size: 18),
                          Text(
                            dateFormatter(articulo.comprasEntregaFecha1!
                                .toLocal()
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
                        Text((articulo.comprasEntregaCantidad2 != null)
                            ? numberFormat(articulo.comprasEntregaCantidad2!)
                            : '0.0'),
                      ],
                    ),
                    const Spacer(),
                    if (articulo.comprasEntregaFecha2 != null)
                      Row(
                        children: [
                          const Icon(Icons.calendar_month, size: 18),
                          Text(
                            dateFormatter(articulo.comprasEntregaFecha2!
                                .toLocal()
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
                        Text((articulo.comprasEntregaCantidad3 != null)
                            ? numberFormat(articulo.comprasEntregaCantidad3!)
                            : '0.0'),
                      ],
                    ),
                    const Spacer(),
                    if (articulo.comprasEntregaFecha3 != null)
                      Row(
                        children: [
                          const Icon(Icons.calendar_month, size: 18),
                          Text(
                            dateFormatter(articulo.comprasEntregaFecha3!
                                .toLocal()
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
                    Text((articulo.comprasEntregaCantidadMas3 != null)
                        ? numberFormat(articulo.comprasEntregaCantidadMas3!)
                        : '0.0'),
                  ],
                ),
              ),
              const Divider(),
              if (articulo.stockDisponible != null)
                ColumnFieldTextDetalle(
                    fieldTitleValue: 'Stock',
                    value: numberFormat(articulo.stockDisponible!)),
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
                  value: numberFormat(articulo.unidadesSubcaja)),
              ColumnFieldTextDetalle(
                  fieldTitleValue: 'Caja',
                  value: numberFormat(articulo.unidadesCaja)),
              ColumnFieldTextDetalle(
                  fieldTitleValue: 'Palet',
                  value: numberFormat(articulo.unidadesPalet)),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ColumnFieldTextDetalle(
                        fieldTitleValue: 'Peso(kg)',
                        value: (numberFormat(articulo.pesoKg))),
                  ),
                  const Spacer(),
                  Expanded(
                    child: ColumnFieldTextDetalle(
                        fieldTitleValue: 'Largo(cm)',
                        value: numberFormat(articulo.largoCm)),
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
                        value: numberFormat(articulo.altoCm)),
                  ),
                  const Spacer(),
                  Expanded(
                    child: ColumnFieldTextDetalle(
                        fieldTitleValue: 'Ancho(cm)',
                        value: numberFormat(articulo.anchoCm)),
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
