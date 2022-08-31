import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/field_text_detail.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article.dart';

import '../../../../core/presentation/common_widgets/buttons_row_bar_widget.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/mobile_custom_separatos.dart';
import '../../../../core/presentation/common_widgets/text_button_widget.dart';
import '../../../../core/routing/app_router.dart';
import '../../infrastructure/article_repository.dart';
import 'article_component_container.dart';
import 'article_component_included_container.dart';
import 'article_document_container.dart';
import 'article_image_container.dart';
import 'article_net_group_container.dart';
import 'article_rate_price_container.dart';
import 'article_spare_container.dart';
import 'article_substitute_container.dart';

class ArticleDetailPage extends StatelessWidget {
  const ArticleDetailPage({Key? key, required this.articleId})
      : super(key: key);

  final String articleId;

  @override
  Widget build(BuildContext context) {
    final params = {'articleId': articleId};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Article detail'),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final articleValue = ref.watch(articleProvider(articleId));
          return AsyncValueWidget<Article>(
            value: articleValue,
            data: (article) => DefaultTabController(
              length: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ButtonsRowBarWidget(
                    textButtonsList: [
                      TextButtonWidget(
                          titleText: 'Ped. Ventas',
                          entityId: articleId,
                          appRouteValue: AppRoute.articlesalesorder,
                          params: params),
                      TextButtonWidget(
                          titleText: '¿Devoluciones?',
                          entityId: articleId,
                          appRouteValue: AppRoute.articlereturns,
                          params: params),
                      TextButtonWidget(
                          titleText: 'Últimos Precios',
                          entityId: articleId,
                          appRouteValue: AppRoute.articlelastprice,
                          params: params),
                      TextButtonWidget(
                          titleText: '¿Estadísticas?',
                          entityId: articleId,
                          appRouteValue: AppRoute.articlestats,
                          params: params),
                    ],
                  ),
                  const Divider(),
                  Expanded(
                    child: NestedScrollView(
                      scrollDirection: Axis.vertical,
                      headerSliverBuilder: (context, innerBoxIsScrolled) => [
                        SliverToBoxAdapter(
                          child: _ArticleInfoContainer(article: article),
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
                          ArticleComponentsContainer(articleId: articleId),
                          ArticleRatePriceContainer(articleId: articleId),
                          ArticleNetGroupPriceContainer(articleId: articleId),
                          ArticleSubstituteContainer(articleId: articleId),
                          ArticleSpareContainer(articleId: articleId),
                          ArticleImagesContainer(articleId: articleId),
                          ArticleDocumentContainer(articleId: articleId),
                          ArticleComponentsIncludedContainer(
                              articleId: articleId),
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

class _ArticleInfoContainer extends StatelessWidget {
  const _ArticleInfoContainer({Key? key, required this.article})
      : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (article.principalImage != null)
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: _ArticlePrincipalImage(
                  articleId: article.id,
                  principalImage: article.principalImage!,
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
              FieldTextDetail(fieldTitleValue: 'Código', value: article.id),
              FieldTextDetail(
                  fieldTitleValue: 'Descripción', value: article.description),
              if (article.family != null || article.subfamily != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (article.family != null)
                      Expanded(
                        child: FieldTextDetail(
                            fieldTitleValue: 'Familia',
                            value: article.family!.description),
                      ),
                    const Spacer(),
                    if (article.subfamily != null)
                      Expanded(
                        child: FieldTextDetail(
                            fieldTitleValue: 'Subamilia',
                            value: article.subfamily!.description),
                      ),
                    const Spacer(),
                  ],
                ),
              const Divider(),
              FieldTextDetail(
                fieldTitleValue: 'Entrega 1',
                value: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.shopping_cart_outlined, size: 18),
                        Text(article.purchasesDeliveryQuantity1?.toString() ??
                            '0.0'),
                      ],
                    ),
                    const Spacer(),
                    if (article.purchasesDeliveryDate1 != null)
                      Row(
                        children: [
                          const Icon(Icons.calendar_month, size: 18),
                          Text(
                            dateFormatter(article.purchasesDeliveryDate1!
                                .toIso8601String()),
                          ),
                        ],
                      ),
                    const Spacer(),
                  ],
                ),
              ),
              FieldTextDetail(
                fieldTitleValue: 'Entrega 2',
                value: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.shopping_cart_outlined, size: 18),
                        Text(article.purchasesDeliveryQuantity2?.toString() ??
                            '0.0'),
                      ],
                    ),
                    const Spacer(),
                    if (article.purchasesDeliveryDate2 != null)
                      Row(
                        children: [
                          const Icon(Icons.calendar_month, size: 18),
                          Text(
                            dateFormatter(article.purchasesDeliveryDate2!
                                .toIso8601String()),
                          ),
                        ],
                      ),
                    const Spacer(),
                  ],
                ),
              ),
              FieldTextDetail(
                fieldTitleValue: 'Entrega 3',
                value: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.shopping_cart_outlined, size: 18),
                        Text(article.purchasesDeliveryQuantity3?.toString() ??
                            '0.0'),
                      ],
                    ),
                    const Spacer(),
                    if (article.purchasesDeliveryDate3 != null)
                      Row(
                        children: [
                          const Icon(Icons.calendar_month, size: 18),
                          Text(
                            dateFormatter(article.purchasesDeliveryDate3!
                                .toIso8601String()),
                          ),
                        ],
                      ),
                    const Spacer(),
                  ],
                ),
              ),
              FieldTextDetail(
                fieldTitleValue: '+',
                value: Row(
                  children: [
                    const Icon(Icons.shopping_cart_outlined, size: 18),
                    Text(article.purchasesDeliveryQuantityMore3?.toString() ??
                        '0.0'),
                  ],
                ),
              ),
              const Divider(),
              if (article.availableStock != null)
                FieldTextDetail(
                    fieldTitleValue: 'Stock',
                    value: article.availableStock.toString()),
            ],
          ),
        ),
        const MobileCustomSeparators(separatorTitle: 'Logística'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FieldTextDetail(
                  fieldTitleValue: 'Subcaja',
                  value: article.subboxUnits.toString()),
              FieldTextDetail(
                  fieldTitleValue: 'Caja', value: article.boxUnits.toString()),
              FieldTextDetail(
                  fieldTitleValue: 'Palet',
                  value: article.paletUnits.toString()),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: FieldTextDetail(
                        fieldTitleValue: 'Peso(kg)',
                        value: article.availableStock.toString()),
                  ),
                  const Spacer(),
                  Expanded(
                    child: FieldTextDetail(
                        fieldTitleValue: 'Largo(cm)',
                        value: article.largeCm.toString()),
                  ),
                  const Spacer(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: FieldTextDetail(
                        fieldTitleValue: 'Alto(cm)',
                        value: article.heightCm.toString()),
                  ),
                  const Spacer(),
                  Expanded(
                    child: FieldTextDetail(
                        fieldTitleValue: 'Ancho(cm)',
                        value: article.widthCm.toString()),
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
              FieldTextDetail(
                fieldTitleValue: 'Pád.Catalogo/2ªEdi.',
                value: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(article.cataloguePage ?? ''),
                    const Spacer(),
                    Text(article.cataloguePage ?? ''),
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
                          value: article.isActiveApp,
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
                          value: article.isActiveWeb,
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
                          value: article.inCatalogue,
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
                          value: article.discontinued,
                          onChanged: null,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(),
              FieldTextDetail(
                  fieldTitleValue: 'Resumen', value: article.summary ?? ''),
            ],
          ),
        )
      ],
    );
  }
}

class _ArticlePrincipalImage extends ConsumerWidget {
  const _ArticlePrincipalImage(
      {Key? key, required this.articleId, required this.principalImage})
      : super(key: key);

  final String articleId;
  final String principalImage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state =
        ref.watch(articleImageFileProvider('$articleId/$principalImage'));

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
