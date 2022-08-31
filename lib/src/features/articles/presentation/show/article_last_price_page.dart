import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articles/infrastructure/article_repository.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../stats/domain/stats_last_price.dart';

class ArticleLastPricePage extends ConsumerWidget {
  const ArticleLastPricePage({Key? key, required this.articleId})
      : super(key: key);

  final String articleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleLastPriceListProvider(articleId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Last prices'),
      ),
      body: state.when(
          data: (lastPriceList) => (lastPriceList.isEmpty)
              ? const Center(child: Text('No Results'))
              : ListView.builder(
                  itemBuilder: (context, i) =>
                      LastPriceTile(lastPrice: lastPriceList[i]),
                  itemCount: lastPriceList.length,
                ),
          error: (e, _) => ErrorMessageWidget(e.toString()),
          loading: () => const ProgressIndicatorWidget()),
    );
  }
}

class LastPriceTile extends StatelessWidget {
  const LastPriceTile({Key? key, required this.lastPrice}) : super(key: key);

  final StatsLastPrice lastPrice;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(
            0.2,
          ),
          width: 1,
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 90,
              color: Theme.of(context).colorScheme.surface,
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('#${lastPrice.customerId}',
                      style: Theme.of(context).textTheme.caption),
                  Row(
                    children: [
                      Text(
                        dateFormatter(lastPrice.date.toIso8601String()),
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              child: Container(
                height: 100,
                padding: const EdgeInsets.all(6.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(lastPrice.article.id,
                            style: Theme.of(context).textTheme.subtitle2),
                      ],
                    ),
                    Text(
                      lastPrice.article.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Precio: ${lastPrice.divisaPrice}x${lastPrice.priceType}',
                              style: Theme.of(context).textTheme.caption,
                            ),
                            if (lastPrice.discount1 != 0.0 ||
                                lastPrice.discount2 != 0.0 ||
                                lastPrice.discount3 != 0.0)
                              Text(
                                dtoText(context, lastPrice.discount1,
                                    lastPrice.discount2, lastPrice.discount2),
                                style: Theme.of(context).textTheme.caption,
                              ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'X',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
