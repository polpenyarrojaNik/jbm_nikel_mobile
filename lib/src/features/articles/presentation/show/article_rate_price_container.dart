import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_rate_price.dart';
import 'package:jbm_nikel_mobile/src/features/articles/infrastructure/article_repository.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class ArticleRatePriceContainer extends ConsumerWidget {
  const ArticleRatePriceContainer({Key? key, required this.articleId})
      : super(key: key);

  final String articleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleRatePriceListProvider(articleId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (articleRatePriceList) => ListView.separated(
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => ArticleRatePriceTile(
            articleRatePrice: articleRatePriceList[i],
          ),
          itemCount: articleRatePriceList.length,
        ),
      ),
    );
  }
}

class ArticleRatePriceTile extends StatelessWidget {
  const ArticleRatePriceTile({Key? key, required this.articleRatePrice})
      : super(key: key);

  final ArticleRatePrice articleRatePrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(articleRatePrice.rateId),
          const SizedBox(height: 5),
          Text(articleRatePrice.rateDescription ?? ''),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${articleRatePrice.price}/${articleRatePrice.priceType}'),
              Text(articleRatePrice.quantityFrom.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
