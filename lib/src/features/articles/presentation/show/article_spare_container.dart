import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/article_spare.dart';
import '../../infrastructure/article_repository.dart';

class ArticleSpareContainer extends ConsumerWidget {
  const ArticleSpareContainer({Key? key, required this.articleId})
      : super(key: key);

  final String articleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleSpareListProvider(articleId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (articleSpareList) => ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => ArticleSpareTile(
            articleSpare: articleSpareList[i],
          ),
          itemCount: articleSpareList.length,
        ),
      ),
    );
  }
}

class ArticleSpareTile extends StatelessWidget {
  const ArticleSpareTile({Key? key, required this.articleSpare})
      : super(key: key);

  final ArticleSpare articleSpare;

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
              Text(articleSpare.id),
              Text(articleSpare.quantity.toString()),
            ],
          ),
          const SizedBox(height: 5),
          Text(articleSpare.description),
        ],
      ),
    );
  }
}
