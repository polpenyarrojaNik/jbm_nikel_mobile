import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/article_net_group_price.dart';
import '../../infrastructure/article_repository.dart';

class ArticleNetGroupPriceContainer extends ConsumerWidget {
  const ArticleNetGroupPriceContainer({Key? key, required this.articleId})
      : super(key: key);

  final String articleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleNetGroupPriceListProvider(articleId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (articleNetGroupPriceList) => ListView.separated(
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => ArticleNetGroupPriceTile(
            articleNetGroupPrice: articleNetGroupPriceList[i],
          ),
          itemCount: articleNetGroupPriceList.length,
        ),
      ),
    );
  }
}

class ArticleNetGroupPriceTile extends StatelessWidget {
  const ArticleNetGroupPriceTile({Key? key, required this.articleNetGroupPrice})
      : super(key: key);

  final ArticleNetGroupPrice articleNetGroupPrice;

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
              Text(articleNetGroupPrice.netGroupId),
              Text(articleNetGroupPrice.netGroupDescription ?? ''),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  '${articleNetGroupPrice.price}/${articleNetGroupPrice.priceType}'),
              Text(articleNetGroupPrice.quantityFrom.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
