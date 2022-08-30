import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';

import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/routing/app_router.dart';
import '../../infrastructure/article_repository.dart';
import 'article_list_tile.dart';

class ArticleListPage extends ConsumerWidget {
  const ArticleListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue>(
      articleListStreamProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );
    final state = ref.watch(articleListStreamProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            floating: true,
            title: Text('Articles'),
          ),
          state.maybeWhen(
            orElse: () => const SliverFillRemaining(
              hasScrollBody: false,
              child: ProgressIndicatorWidget(),
            ),
            error: (e, st) => SliverFillRemaining(
              child: ErrorMessageWidget(e.toString()),
            ),
            data: (articleList) => SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => ArticleListTile(
                  article: articleList[i],
                  appRoute: AppRoute.articleshow,
                  customerId: null,
                ),
                childCount: articleList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
