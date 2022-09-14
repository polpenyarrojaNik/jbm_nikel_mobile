import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/column_field_text_detail.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/datos_extra_row.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';
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
            child: _ArticuloImageCarrousel(
              articuloId: articulo.id,
              imagenPrincipal: articulo.imagenPrincipal!,
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  getDescriptionInLocalLanguage(articulo: articulo),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              IconButton(
                onPressed: () =>
                    showAllDescriptions(context: context, articulo: articulo),
                icon: const Icon(Icons.info),
                visualDensity:
                    const VisualDensity(vertical: -4, horizontal: -4),
              )
            ],
          ),
        ),
        if (getSummaryInLocalLanguage(articulo: articulo) != null)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    getSummaryInLocalLanguage(articulo: articulo)!,
                  ),
                ),
                IconButton(
                  onPressed: () =>
                      showAllResumenes(context: context, articulo: articulo),
                  icon: const Icon(Icons.info),
                  visualDensity:
                      const VisualDensity(vertical: -4, horizontal: -4),
                )
              ],
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

  void showAllDescriptions(
      {required BuildContext context, required Articulo articulo}) {
    showDialog(
      context: context,
      builder: (context) => _ArticleDescriptionDialog(articulo: articulo),
    );
  }

  void showAllResumenes(
      {required BuildContext context, required Articulo articulo}) {
    showDialog(
      context: context,
      builder: (context) => _ArticluloResumenDialog(articulo: articulo),
    );
  }
}

class _ArticleDescriptionDialog extends StatelessWidget {
  const _ArticleDescriptionDialog({
    required this.articulo,
  });

  final Articulo articulo;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          articulo.id,
        ),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DescriptionResumenRow(
              title: 'Desc. ES: ',
              description: articulo.descripcionES,
            ),
            const Divider(),
            if (articulo.descripcionEN != null)
              DescriptionResumenRow(
                title: 'Desc. EN: ',
                description: articulo.descripcionEN,
              ),
            if (articulo.descripcionEN != null) const Divider(),
            if (articulo.descripcionFR != null)
              DescriptionResumenRow(
                title: 'Desc. FR: ',
                description: articulo.descripcionFR,
              ),
            if (articulo.descripcionFR != null) const Divider(),
            if (articulo.descripcionDE != null)
              DescriptionResumenRow(
                title: 'Desc. DE: ',
                description: articulo.descripcionDE,
              ),
            if (articulo.descripcionDE != null) const Divider(),
            if (articulo.descripcionCA != null)
              DescriptionResumenRow(
                title: 'Desc. CA: ',
                description: articulo.descripcionCA,
              ),
            if (articulo.descripcionCA != null) const Divider(),
            if (articulo.descripcionGB != null)
              DescriptionResumenRow(
                title: 'Desc. GB: ',
                description: articulo.descripcionGB,
              ),
            if (articulo.descripcionGB != null) const Divider(),
            if (articulo.descripcionHU != null)
              DescriptionResumenRow(
                title: 'Desc. HU: ',
                description: articulo.descripcionHU,
              ),
            if (articulo.descripcionHU != null) const Divider(),
            if (articulo.descripcionIT != null)
              DescriptionResumenRow(
                title: 'Desc. IT: ',
                description: articulo.descripcionIT,
              ),
            if (articulo.descripcionIT != null) const Divider(),
            if (articulo.descripcionNL != null)
              DescriptionResumenRow(
                title: 'Desc. NL: ',
                description: articulo.descripcionNL,
              ),
            if (articulo.descripcionNL != null) const Divider(),
            if (articulo.descripcionPL != null)
              DescriptionResumenRow(
                title: 'Desc. PL: ',
                description: articulo.descripcionPL,
              ),
            if (articulo.descripcionPL != null) const Divider(),
            if (articulo.descripcionPT != null)
              DescriptionResumenRow(
                title: 'Desc. PT: ',
                description: articulo.descripcionPT,
              ),
            if (articulo.descripcionPT != null) const Divider(),
            if (articulo.descripcionRO != null)
              DescriptionResumenRow(
                title: 'Desc. RO: ',
                description: articulo.descripcionRO,
              ),
            if (articulo.descripcionRO != null) const Divider(),
            if (articulo.descripcionRU != null)
              DescriptionResumenRow(
                title: 'Desc. RU: ',
                description: articulo.descripcionRU,
              ),
            if (articulo.descripcionRU != null) const Divider(),
            if (articulo.descripcionCN != null)
              DescriptionResumenRow(
                title: 'Desc. CN: ',
                description: articulo.descripcionCN,
              ),
            if (articulo.descripcionCN != null) const Divider(),
            if (articulo.descripcionEL != null)
              DescriptionResumenRow(
                title: 'Desc. EL: ',
                description: articulo.descripcionEL,
              ),
          ],
        ),
      ),
    );
  }
}

class _ArticluloResumenDialog extends StatelessWidget {
  const _ArticluloResumenDialog({
    required this.articulo,
  });

  final Articulo articulo;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          articulo.id,
        ),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DescriptionResumenRow(
              title: 'Resumen ES: ',
              description: articulo.resumenES,
            ),
            const Divider(),
            if (articulo.resumenEN != null)
              DescriptionResumenRow(
                title: 'Resumen EN: ',
                description: articulo.resumenEN,
              ),
            if (articulo.resumenEN != null) const Divider(),
            if (articulo.resumenFR != null)
              DescriptionResumenRow(
                title: 'Resumen FR: ',
                description: articulo.resumenFR,
              ),
            if (articulo.resumenFR != null) const Divider(),
            if (articulo.resumenDE != null)
              DescriptionResumenRow(
                title: 'Resumen DE: ',
                description: articulo.resumenDE,
              ),
            if (articulo.resumenDE != null) const Divider(),
            if (articulo.resumenCA != null)
              DescriptionResumenRow(
                title: 'Resumen CA: ',
                description: articulo.resumenCA,
              ),
            if (articulo.resumenCA != null) const Divider(),
            if (articulo.resumenGB != null)
              DescriptionResumenRow(
                title: 'Resumen GB: ',
                description: articulo.resumenGB,
              ),
            if (articulo.resumenGB != null) const Divider(),
            if (articulo.resumenHU != null)
              DescriptionResumenRow(
                title: 'Resumen HU: ',
                description: articulo.resumenHU,
              ),
            if (articulo.resumenHU != null) const Divider(),
            if (articulo.resumenIT != null)
              DescriptionResumenRow(
                title: 'Resumen IT: ',
                description: articulo.resumenIT,
              ),
            if (articulo.resumenIT != null) const Divider(),
            if (articulo.resumenNL != null)
              DescriptionResumenRow(
                title: 'Resumen NL: ',
                description: articulo.resumenNL,
              ),
            if (articulo.resumenNL != null) const Divider(),
            if (articulo.resumenPL != null)
              DescriptionResumenRow(
                title: 'Resumen PL: ',
                description: articulo.resumenPL,
              ),
            if (articulo.resumenPL != null) const Divider(),
            if (articulo.resumenPT != null)
              DescriptionResumenRow(
                title: 'Resumen PT: ',
                description: articulo.resumenPT,
              ),
            if (articulo.resumenPT != null) const Divider(),
            if (articulo.resumenRO != null)
              DescriptionResumenRow(
                title: 'Resumen RO: ',
                description: articulo.resumenRO,
              ),
            if (articulo.resumenRO != null) const Divider(),
            if (articulo.resumenRU != null)
              DescriptionResumenRow(
                title: 'Resumen RU: ',
                description: articulo.resumenRU,
              ),
            if (articulo.resumenRU != null) const Divider(),
            if (articulo.resumenCN != null)
              DescriptionResumenRow(
                title: 'Resumen CN: ',
                description: articulo.resumenCN,
              ),
            if (articulo.resumenCN != null) const Divider(),
            if (articulo.resumenEL != null)
              DescriptionResumenRow(
                title: 'Resumen EL: ',
                description: articulo.resumenEL,
              ),
          ],
        ),
      ),
    );
  }
}

class DescriptionResumenRow extends StatelessWidget {
  const DescriptionResumenRow({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: Theme.of(context).textTheme.caption?.copyWith(
                color: Theme.of(context).textTheme.bodyText2?.color)),
        gapW4,
        Flexible(
            child:
                Text(description!, style: Theme.of(context).textTheme.caption)),
      ],
    );
  }
}

class _ArticuloImageCarrousel extends ConsumerStatefulWidget {
  const _ArticuloImageCarrousel(
      {required this.articuloId, required this.imagenPrincipal});

  final String articuloId;
  final String imagenPrincipal;

  @override
  ConsumerState<_ArticuloImageCarrousel> createState() =>
      _ArticuloImageCarrouselState();
}

class _ArticuloImageCarrouselState
    extends ConsumerState<_ArticuloImageCarrousel> {
  PageController _pageController =
      PageController(viewportFraction: 0.8, initialPage: 0);

  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(articuloImageListProvider(widget.articuloId));
    return state.when(
        data: (articuloImagenes) => Column(
              children: [
                SizedBox(
                  height: 175,
                  width: 400,
                  child: PageView.builder(
                    itemCount: articuloImagenes.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage = page;
                      });
                    },
                    itemBuilder: (context, i) => CachedNetworkImage(
                      imageUrl:
                          'http://${dotenv.get('URL', fallback: 'localhost:3001')}/api/v1/online/adjunto/img?PATH=${widget.articuloId}/${articuloImagenes[i].nombreArchivo}',
                      progressIndicatorBuilder: (context, url, progress) =>
                          Image.asset(
                        height: 175,
                        width: 400,
                        fit: BoxFit.contain,
                        'assets/image-placeholder.png',
                      ),
                      errorWidget: (context, error, _) =>
                          const Icon(Icons.error),
                      height: 175,
                      width: 400,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicators(articuloImagenes.length, activePage))
              ],
            ),
        error: (error, _) => ErrorMessageWidget(error.toString()),
        loading: () => const ProgressIndicatorWidget());
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            shape: BoxShape.circle),
      );
    });
  }
}
