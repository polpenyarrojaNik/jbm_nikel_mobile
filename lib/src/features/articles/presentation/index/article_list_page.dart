import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';

import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/routing/app_router.dart';
import '../../infrastructure/article_repository.dart';
import 'article_list_tile.dart';

class ArticleListPage extends ConsumerWidget {
  const ArticleListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();

    ref.listen<AsyncValue>(
      articleListStreamProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );
    final state = ref.watch(articleListStreamProvider);

    final stateLastSync = ref.watch(articleLastSyncProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        title: 'Articles',
        searchTitle: 'Search article...',
        onSubmitted: (searchText) => {print(searchText)},
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            stateLastSync.when(
                data: (lastSyncDate) =>
                    LastSyncDateWidget(lastSyncDate: lastSyncDate),
                error: (e, _) => ErrorMessageWidget(e.toString()),
                loading: () => const ProgressIndicatorWidget()),
            Expanded(
              child: state.when(
                loading: () => const ProgressIndicatorWidget(),
                error: (e, _) => ErrorMessageWidget(e.toString()),
                data: (articleList) => (articleList.isEmpty)
                    ? Container()
                    : ListView.builder(
                        shrinkWrap: true,
                        controller: scrollController,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: articleList.length,
                        itemBuilder: (context, i) => ArticleListTile(
                          article: articleList[i],
                          appRoute: AppRoute.articleshow,
                          customerId: null,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
