import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_widget.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article.dart';

import '../../../../core/presentation/common_widgets/buttons_row_bar_widget.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article detail'),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final articleValue = ref.watch(articleProvider(articleId));
          return AsyncValueWidget<Article>(
            value: articleValue,
            data: (article) => Padding(
              padding: const EdgeInsets.all(8),
              child: DefaultTabController(
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
                        ),
                        TextButtonWidget(
                          titleText: 'Devoluciones',
                          entityId: articleId,
                          appRouteValue: AppRoute.articlereturns,
                        ),
                        TextButtonWidget(
                          titleText: 'Últimos Precios',
                          entityId: articleId,
                          appRouteValue: AppRoute.articlereturns,
                        ),
                        TextButtonWidget(
                          titleText: 'Estadísticas',
                          entityId: articleId,
                          appRouteValue: AppRoute.articlestats,
                        ),
                      ],
                    ),
                    const Divider(),
                    Text(
                      article.id,
                    ),
                    const SizedBox(
                      height: 450,
                      child: Center(
                        child: Text('Article INFO'),
                      ),
                    ),
                    const Divider(),
                    const TabBar(
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
                    Expanded(
                      child: TabBarView(
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
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
