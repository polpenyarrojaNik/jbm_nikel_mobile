import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/column_field_text_detail.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/datos_extra_row.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/mobile_custom_separatos.dart';
import '../../infrastructure/articulo_repository.dart';

class ArticuloDetallePage extends StatelessWidget {
  const ArticuloDetallePage({super.key, required this.articuloId});

  final String articuloId;

  @override
  Widget build(BuildContext context) {
    final params = {'articuloId': articuloId};

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).articulo_show_articuloDetalle_titulo),
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
                _DatosRelacionados(articulo: articulo, params: params),
                _Consultas(articulo: articulo, params: params),
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
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  getDescriptionArticuloInLocalLanguage(articulo: articulo),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            (articulo.subfamilia != null)
                ? '${articulo.familia?.descripcion}/${articulo.subfamilia?.descripcion}'
                : '${articulo.familia?.descripcion}',
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        gapH8,
        if (getSummaryInLocalLanguage(articulo: articulo) != null)
          SummaryTextWidget(articulo: articulo),
        MobileCustomSeparators(
          separatorTitle:
              S.of(context).articulo_show_articuloDetalle_stockYEntregas,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: ColumnFieldTextDetalle(
                    fieldTitleValue: S.of(context).stock,
                    value:
                        '${numberFormatCantidades(articulo.stockDisponible)} ${S.of(context).unidad}'),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    if (articulo.comprasEntregaCantidad1 != 0)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S
                                .of(context)
                                .articulo_show_articuloDetalle_entrega1,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .color),
                          ),
                          if (articulo.comprasEntregaCantidad1 != 0) gapH8,
                          if (articulo.comprasEntregaCantidad2 != 0)
                            Text(
                              S
                                  .of(context)
                                  .articulo_show_articuloDetalle_entrega2,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color),
                            ),
                          if (articulo.comprasEntregaCantidad2 != 0) gapH8,
                          if (articulo.comprasEntregaCantidad3 != 0)
                            Text(
                              S
                                  .of(context)
                                  .articulo_show_articuloDetalle_entrega3,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .color),
                            ),
                          if (articulo.comprasEntregaCantidad3 != 0) gapH8,
                          if (articulo.comprasEntregaCantidadMas3 != 0)
                            Text(
                              S.of(context).articulo_show_articuloDetalle_mas,
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
                        if (articulo.comprasEntregaCantidad1 != 0)
                          Text(numberFormatCantidades(
                              articulo.comprasEntregaCantidad1)),
                        if (articulo.comprasEntregaCantidad1 != 0) gapH8,
                        if (articulo.comprasEntregaCantidad2 != 0)
                          Text(numberFormatCantidades(
                              articulo.comprasEntregaCantidad2)),
                        if (articulo.comprasEntregaCantidad2 != 0) gapH8,
                        if (articulo.comprasEntregaCantidad3 != 0)
                          Text(numberFormatCantidades(
                              articulo.comprasEntregaCantidad3)),
                        if (articulo.comprasEntregaCantidad3 != 0) gapH8,
                        if (articulo.comprasEntregaCantidadMas3 != 0)
                          Text(numberFormatCantidades(
                              articulo.comprasEntregaCantidadMas3)),
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
                            style: getTextStyleFechaEntregaByEstado(
                                estado: articulo.comprasEntregaEstado1,
                                context: context),
                          ),
                        if (articulo.comprasEntregaFecha1 != null) gapH8,
                        if (articulo.comprasEntregaFecha2 != null)
                          Text(
                            dateFormatter(
                              articulo.comprasEntregaFecha2!
                                  .toLocal()
                                  .toIso8601String(),
                            ),
                            style: getTextStyleFechaEntregaByEstado(
                                estado: articulo.comprasEntregaEstado2,
                                context: context),
                          ),
                        if (articulo.comprasEntregaFecha2 != null) gapH8,
                        if (articulo.comprasEntregaFecha3 != null)
                          Text(
                            dateFormatter(
                              articulo.comprasEntregaFecha3!
                                  .toLocal()
                                  .toIso8601String(),
                            ),
                            style: getTextStyleFechaEntregaByEstado(
                                estado: articulo.comprasEntregaEstado3,
                                context: context),
                          ),
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
        MobileCustomSeparators(
          separatorTitle:
              S.of(context).articulo_show_articuloDetalle_datosLogistica,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColumnFieldTextDetalle(
                  fieldTitleValue: S
                      .of(context)
                      .articulo_show_articuloDetalle_cantidadSubcaja,
                  value:
                      '${numberFormatCantidades(articulo.unidadesSubcaja)} ${S.of(context).unidad}'),
              ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S.of(context).articulo_show_articuloDetalle_cantidadCaja,
                  value:
                      '${numberFormatCantidades(articulo.unidadesCaja)} ${S.of(context).unidad}'),
              ColumnFieldTextDetalle(
                  fieldTitleValue:
                      S.of(context).articulo_show_articuloDetalle_cantidadPalet,
                  value:
                      '${numberFormatCantidades(articulo.unidadesPalet)} ${S.of(context).unidad}'),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ColumnFieldTextDetalle(
                      fieldTitleValue:
                          S.of(context).articulo_show_articuloDetalle_peso,
                      value:
                          '${numberFormatCantidades(articulo.pesoKg)} ${S.of(context).articulo_show_articuloDetalle_kg}',
                    ),
                  ),
                  Expanded(
                    child: ColumnFieldTextDetalle(
                        fieldTitleValue:
                            S.of(context).articulo_show_articuloDetalle_medidas,
                        value:
                            '${numberFormatCantidades(articulo.altoCm)} cm x ${numberFormatCantidades(articulo.largoCm)} cm x ${numberFormatCantidades(articulo.anchoCm)} cm'),
                  ),
                ],
              ),
            ],
          ),
        ),
        MobileCustomSeparators(
            separatorTitle:
                S.of(context).articulo_show_articuloDetalle_otrosDatos),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (articulo.paginaEnCatalgo != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                        fieldTitleValue: S
                            .of(context)
                            .articulo_show_articuloDetalle_paginaEnCatalogo,
                        value: Text(articulo.paginaEnCatalgo!),
                      ),
                    ),
                  if (articulo.paginaEnCatalgo2 != null)
                    Expanded(
                      child: ColumnFieldTextDetalle(
                        fieldTitleValue: S
                            .of(context)
                            .articulo_show_articuloDetalle_pagina2Edicion,
                        value: Text(articulo.paginaEnCatalgo2!),
                      ),
                    ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Text(S
                                .of(context)
                                .articulo_show_articuloDetalle_enCatalogo)),
                        Checkbox(
                          visualDensity:
                              const VisualDensity(vertical: -4, horizontal: -4),
                          value: articulo.enCatalogo,
                          onChanged: null,
                        )
                      ],
                    ),
                  ),
                  gapW48,
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Text(S
                                .of(context)
                                .articulo_show_articuloDetalle_descatalogadoCompras)),
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
                        Flexible(
                            child: Text(S
                                .of(context)
                                .articulo_show_articuloDetalle_activoWeb)),
                        Checkbox(
                          visualDensity:
                              const VisualDensity(vertical: -4, horizontal: -4),
                          value: articulo.activoWeb,
                          onChanged: null,
                        )
                      ],
                    ),
                  ),
                  gapW48,
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
            _DescriptionResumenRow(
              title: 'ES: ',
              description: articulo.descripcionES,
            ),
            const Divider(),
            if (articulo.descripcionEN != null)
              _DescriptionResumenRow(
                title: 'EN: ',
                description: articulo.descripcionEN,
              ),
            if (articulo.descripcionEN != null) const Divider(),
            if (articulo.descripcionFR != null)
              _DescriptionResumenRow(
                title: 'FR: ',
                description: articulo.descripcionFR,
              ),
            if (articulo.descripcionFR != null) const Divider(),
            if (articulo.descripcionDE != null)
              _DescriptionResumenRow(
                title: 'DE: ',
                description: articulo.descripcionDE,
              ),
            if (articulo.descripcionDE != null) const Divider(),
            if (articulo.descripcionCA != null)
              _DescriptionResumenRow(
                title: 'CA: ',
                description: articulo.descripcionCA,
              ),
            if (articulo.descripcionCA != null) const Divider(),
            if (articulo.descripcionGB != null)
              _DescriptionResumenRow(
                title: 'GB: ',
                description: articulo.descripcionGB,
              ),
            if (articulo.descripcionGB != null) const Divider(),
            if (articulo.descripcionHU != null)
              _DescriptionResumenRow(
                title: 'HU: ',
                description: articulo.descripcionHU,
              ),
            if (articulo.descripcionHU != null) const Divider(),
            if (articulo.descripcionIT != null)
              _DescriptionResumenRow(
                title: 'IT: ',
                description: articulo.descripcionIT,
              ),
            if (articulo.descripcionIT != null) const Divider(),
            if (articulo.descripcionNL != null)
              _DescriptionResumenRow(
                title: 'NL: ',
                description: articulo.descripcionNL,
              ),
            if (articulo.descripcionNL != null) const Divider(),
            if (articulo.descripcionPL != null)
              _DescriptionResumenRow(
                title: 'PL: ',
                description: articulo.descripcionPL,
              ),
            if (articulo.descripcionPL != null) const Divider(),
            if (articulo.descripcionPT != null)
              _DescriptionResumenRow(
                title: 'PT: ',
                description: articulo.descripcionPT,
              ),
            if (articulo.descripcionPT != null) const Divider(),
            if (articulo.descripcionRO != null)
              _DescriptionResumenRow(
                title: 'RO: ',
                description: articulo.descripcionRO,
              ),
            if (articulo.descripcionRO != null) const Divider(),
            if (articulo.descripcionRU != null)
              _DescriptionResumenRow(
                title: 'RU: ',
                description: articulo.descripcionRU,
              ),
            if (articulo.descripcionRU != null) const Divider(),
            if (articulo.descripcionCN != null)
              _DescriptionResumenRow(
                title: 'CN: ',
                description: articulo.descripcionCN,
              ),
            if (articulo.descripcionCN != null) const Divider(),
            if (articulo.descripcionEL != null)
              _DescriptionResumenRow(
                title: 'EL: ',
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
            _DescriptionResumenRow(
              title: 'ES: ',
              description: articulo.resumenES,
            ),
            const Divider(),
            if (articulo.resumenEN != null)
              _DescriptionResumenRow(
                title: 'EN: ',
                description: articulo.resumenEN,
              ),
            if (articulo.resumenEN != null) const Divider(),
            if (articulo.resumenFR != null)
              _DescriptionResumenRow(
                title: 'FR: ',
                description: articulo.resumenFR,
              ),
            if (articulo.resumenFR != null) const Divider(),
            if (articulo.resumenDE != null)
              _DescriptionResumenRow(
                title: 'DE: ',
                description: articulo.resumenDE,
              ),
            if (articulo.resumenDE != null) const Divider(),
            if (articulo.resumenCA != null)
              _DescriptionResumenRow(
                title: 'CA: ',
                description: articulo.resumenCA,
              ),
            if (articulo.resumenCA != null) const Divider(),
            if (articulo.resumenGB != null)
              _DescriptionResumenRow(
                title: 'GB: ',
                description: articulo.resumenGB,
              ),
            if (articulo.resumenGB != null) const Divider(),
            if (articulo.resumenHU != null)
              _DescriptionResumenRow(
                title: 'HU: ',
                description: articulo.resumenHU,
              ),
            if (articulo.resumenHU != null) const Divider(),
            if (articulo.resumenIT != null)
              _DescriptionResumenRow(
                title: 'IT: ',
                description: articulo.resumenIT,
              ),
            if (articulo.resumenIT != null) const Divider(),
            if (articulo.resumenNL != null)
              _DescriptionResumenRow(
                title: 'NL: ',
                description: articulo.resumenNL,
              ),
            if (articulo.resumenNL != null) const Divider(),
            if (articulo.resumenPL != null)
              _DescriptionResumenRow(
                title: 'PL: ',
                description: articulo.resumenPL,
              ),
            if (articulo.resumenPL != null) const Divider(),
            if (articulo.resumenPT != null)
              _DescriptionResumenRow(
                title: 'PT: ',
                description: articulo.resumenPT,
              ),
            if (articulo.resumenPT != null) const Divider(),
            if (articulo.resumenRO != null)
              _DescriptionResumenRow(
                title: 'RO: ',
                description: articulo.resumenRO,
              ),
            if (articulo.resumenRO != null) const Divider(),
            if (articulo.resumenRU != null)
              _DescriptionResumenRow(
                title: 'RU: ',
                description: articulo.resumenRU,
              ),
            if (articulo.resumenRU != null) const Divider(),
            if (articulo.resumenCN != null)
              _DescriptionResumenRow(
                title: 'CN: ',
                description: articulo.resumenCN,
              ),
            if (articulo.resumenCN != null) const Divider(),
            if (articulo.resumenEL != null)
              _DescriptionResumenRow(
                title: 'EL: ',
                description: articulo.resumenEL,
              ),
          ],
        ),
      ),
    );
  }
}

class _DescriptionResumenRow extends StatelessWidget {
  const _DescriptionResumenRow({
    required this.title,
    required this.description,
  });

  final String title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .caption
              ?.copyWith(color: Theme.of(context).textTheme.bodyText2?.color),
        ),
        gapW4,
        Flexible(
          child: Text(description!, style: Theme.of(context).textTheme.caption),
        ),
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
                      imageUrl: articuloImagenes[i].url,
                      progressIndicatorBuilder: (context, url, progress) =>
                          Image.asset(
                        height: 175,
                        width: 400,
                        fit: BoxFit.contain,
                        'assets/image-placeholder.png',
                      ),
                      errorWidget: (context, error, _) => Center(
                        child: Text(S
                            .of(context)
                            .articulo_show_articuloDetalle_noDisponible),
                      ),
                      height: 175,
                      width: 400,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: indicators(articuloImagenes.length, activePage),
                )
              ],
            ),
        error: (error, _) => Container(),
        loading: () => const ProgressIndicatorWidget());
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(
      imagesLength,
      (index) {
        return Container(
          margin: const EdgeInsets.all(3),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: currentIndex == index
                  ? _isDark()
                      ? Colors.white
                      : Colors.black
                  : _isDark()
                      ? Colors.white54
                      : Colors.black26,
              shape: BoxShape.circle),
        );
      },
    );
  }

  bool _isDark() {
    return Theme.of(context).brightness == Brightness.dark;
  }
}

class _DatosRelacionados extends StatelessWidget {
  const _DatosRelacionados({required this.articulo, required this.params});

  final Articulo articulo;
  final Map<String, String> params;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobileCustomSeparators(
            separatorTitle:
                S.of(context).articulo_show_articuloDetalle_datosRelacionados),
        DatosExtraRow(
          title: S.of(context).articulo_show_articuloPreciosTarifa_titulo,
          navigationTo: () => context.router.push(
            ArticuloPrecioTarifaRoute(
              articuloId: articulo.id,
              description:
                  getDescriptionArticuloInLocalLanguage(articulo: articulo),
            ),
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).articulo_show_articuloGruposNetos_titulo,
          navigationTo: () => context.router.push(
            ArticuloGrupoNetoRoute(
              articuloId: articulo.id,
              description:
                  getDescriptionArticuloInLocalLanguage(articulo: articulo),
            ),
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).articulo_show_articuloComponentes_titulo,
          navigationTo: () => context.router.push(
            ArticuloComponenteRoute(
              articuloId: articulo.id,
              description:
                  getDescriptionArticuloInLocalLanguage(articulo: articulo),
            ),
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).articulo_show_articuloRecambio_titulo,
          navigationTo: () => context.router.push(
            ArticuloRecambioRoute(
              articuloId: articulo.id,
              description:
                  getDescriptionArticuloInLocalLanguage(articulo: articulo),
            ),
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).articulo_show_articuloSustitutivo_titulo,
          navigationTo: () => context.router.push(
            ArticuloSustitutivoRoute(
              articuloId: articulo.id,
              description:
                  getDescriptionArticuloInLocalLanguage(articulo: articulo),
            ),
          ),
        ),
      ],
    );
  }
}

class _Consultas extends StatelessWidget {
  const _Consultas({required this.articulo, required this.params});

  final Articulo articulo;
  final Map<String, String> params;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      MobileCustomSeparators(
          separatorTitle:
              S.of(context).articulo_show_articuloDetalle_consultas),
      DatosExtraRow(
        title: S.of(context).articulo_show_articuloPedidoVenta_titulo,
        navigationTo: () => context.router.push(
          ArticuloPedidoVentaRoute(
            articuloId: articulo.id,
            description:
                getDescriptionArticuloInLocalLanguage(articulo: articulo),
          ),
        ),
      ),
      const Divider(),
      DatosExtraRow(
        title: S.of(context).articulo_show_articuloVentasMes_titulo,
        navigationTo: () => context.router.push(
          ArticuloVentasMesRoute(
            articuloId: articulo.id,
            descripcion:
                getDescriptionArticuloInLocalLanguage(articulo: articulo),
          ),
        ),
      ),
      const Divider(),
      DatosExtraRow(
        title: S.of(context).articulo_show_articuloVentasCliente_titulo,
        navigationTo: () => context.router.push(
          ArticuloVentasClienteRoute(
            articuloId: articulo.id,
            description:
                getDescriptionArticuloInLocalLanguage(articulo: articulo),
          ),
        ),
      ),
      const Divider(),
      DatosExtraRow(
        title: S.of(context).ultimosPrecios_titulo,
        navigationTo: () => context.router.push(
          ArticuloUltimosPreciosRoute(
            articuloId: articulo.id,
            description:
                getDescriptionArticuloInLocalLanguage(articulo: articulo),
          ),
        ),
      ),
      const Divider(),
      DatosExtraRow(
        title: S.of(context).articulo_show_articuloDocumentos_titulo,
        navigationTo: () => context.router.push(
          ArticuloDocumentoRoute(
            articuloId: articulo.id,
            description:
                getDescriptionArticuloInLocalLanguage(articulo: articulo),
          ),
        ),
      ),
    ]);
  }
}

class SummaryTextWidget extends StatefulWidget {
  const SummaryTextWidget({super.key, required this.articulo});

  final Articulo articulo;

  @override
  State<SummaryTextWidget> createState() => _SummaryTextWidgetState();
}

class _SummaryTextWidgetState extends State<SummaryTextWidget> {
  bool showAllText = false;
  @override
  void initState() {
    super.initState();
    showAllText = false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  getSummaryInLocalLanguage(articulo: widget.articulo)!,
                  overflow: (showAllText) ? null : TextOverflow.ellipsis,
                  maxLines: (showAllText) ? null : 3,
                ),
              ),
              gapW8,
              IconButton(
                onPressed: () => showAllResumenes(
                    context: context, articulo: widget.articulo),
                icon: const Icon(Icons.info),
                visualDensity:
                    const VisualDensity(vertical: -4, horizontal: -4),
              )
            ],
          ),
          IconButton(
            onPressed: () => showAllSummaryText(),
            icon: (showAllText)
                ? const Icon(Icons.arrow_drop_up)
                : const Icon(Icons.arrow_drop_down),
          ),
        ],
      ),
    );
  }

  void showAllSummaryText() {
    setState(() {
      showAllText = !showAllText;
    });
  }

  void showAllResumenes(
      {required BuildContext context, required Articulo articulo}) {
    showDialog(
      context: context,
      builder: (context) => _ArticluloResumenDialog(articulo: articulo),
    );
  }
}
