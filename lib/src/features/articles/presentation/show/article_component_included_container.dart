import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_component.dart';
import 'package:jbm_nikel_mobile/src/features/articles/infrastructure/article_repository.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class ArticleComponentsIncludedContainer extends ConsumerWidget {
  const ArticleComponentsIncludedContainer({Key? key, required this.articleId})
      : super(key: key);

  final String articleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleComponentListProvider(articleId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (articleComponentInlcudedList) => ListView.separated(
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => ArticleComponentIncludedTile(
            articleComponentInlcuded: articleComponentInlcudedList[i],
          ),
          itemCount: articleComponentInlcudedList.length,
        ),
      ),
    );
  }
}

class ArticleComponentIncludedTile extends StatelessWidget {
  const ArticleComponentIncludedTile(
      {Key? key, required this.articleComponentInlcuded})
      : super(key: key);

  final ArticleComponent articleComponentInlcuded;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(articleComponentInlcuded.article.id),
              Text(articleComponentInlcuded.quantity.toString()),
            ],
          ),
          const SizedBox(height: 5),
          Text(articleComponentInlcuded.article.description),
          Text('Stock: ${articleComponentInlcuded.article.availableStock}'),
        ],
      ),
    );
  }
}
