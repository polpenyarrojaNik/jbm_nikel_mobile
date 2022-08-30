import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_component.dart';
import 'package:jbm_nikel_mobile/src/features/articles/infrastructure/article_repository.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class ArticleComponentsContainer extends ConsumerWidget {
  const ArticleComponentsContainer({Key? key, required this.articleId})
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
        data: (articleComponentList) => ListView.separated(
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => ArticleComponentTile(
            articleComponent: articleComponentList[i],
          ),
          itemCount: articleComponentList.length,
        ),
      ),
    );
  }
}

class ArticleComponentTile extends StatelessWidget {
  const ArticleComponentTile({Key? key, required this.articleComponent})
      : super(key: key);

  final ArticleComponent articleComponent;

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
              Text(articleComponent.articleComponent.id),
              Text(articleComponent.quantity.toString()),
            ],
          ),
          const SizedBox(height: 5),
          Text(articleComponent.articleComponent.description),
          Text('Stock: ${articleComponent.articleComponent.availableStock}'),
        ],
      ),
    );
  }
}
