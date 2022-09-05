import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/top_article_repository.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/routing/app_router.dart';
import '../../../articles/presentation/index/article_list_tile.dart';
import '../../infrastructure/customer_repository.dart';

class CustomerTopArticlesListPage extends ConsumerWidget {
  const CustomerTopArticlesListPage({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(topArticleProvider);
    final stateLastSync = ref.watch(customerTopArticleLastSyncProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Top 150'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              stateLastSync.when(
                  data: (lastSyncDate) =>
                      LastSyncDateWidget(lastSyncDate: lastSyncDate),
                  error: (e, _) => ErrorMessageWidget(e.toString()),
                  loading: () => const ProgressIndicatorWidget()),
              Expanded(
                child: state.when(
                    data: (topArticleList) => ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: topArticleList.length,
                          itemBuilder: (context, i) => ArticleListTile(
                              article: topArticleList[i].article,
                              appRoute: AppRoute.customertoparticlesshow,
                              customerId: customerId),
                        ),
                    error: (e, _) => ErrorMessageWidget(e.toString()),
                    loading: () => const ProgressIndicatorWidget()),
              ),
            ],
          )),
    );
  }
}
