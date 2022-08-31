import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/article_substitute.dart';
import '../../infrastructure/article_repository.dart';

class ArticleSubstituteContainer extends ConsumerWidget {
  const ArticleSubstituteContainer({Key? key, required this.articleId})
      : super(key: key);

  final String articleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleSubstituteListProvider(articleId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (articleSubstituteList) => ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => ArticleSubstituteTile(
            articleSubstitute: articleSubstituteList[i],
          ),
          itemCount: articleSubstituteList.length,
        ),
      ),
    );
  }
}

class ArticleSubstituteTile extends StatelessWidget {
  const ArticleSubstituteTile({Key? key, required this.articleSubstitute})
      : super(key: key);

  final ArticleSubstitute articleSubstitute;

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
              Text(articleSubstitute.articleSubstitute.id),
              Text(articleSubstitute.order.toString()),
            ],
          ),
          const SizedBox(height: 5),
          Text(articleSubstitute.articleSubstitute.description),
          Text('Stock: ${articleSubstitute.articleSubstitute.availableStock}'),
        ],
      ),
    );
  }
}
