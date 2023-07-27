import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/app_drawer.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/last_sync_date_widget.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/index/articulo_list_shimmer.dart';
import 'package:jbm_nikel_mobile/src/features/sync/application/sync_notifier_provider.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../notifications/core/application/notification_provider.dart';
import '../../domain/articulo.dart';
import 'articulo_lista_tile.dart';
import 'articulo_search_controller.dart';

@RoutePage()
class ArticuloListaPage extends ConsumerStatefulWidget {
  const ArticuloListaPage({super.key, required this.isSearchArticuloForForm});

  final bool isSearchArticuloForForm;

  @override
  ConsumerState<ArticuloListaPage> createState() => _ArticuloListaPageState();
}

class _ArticuloListaPageState extends ConsumerState<ArticuloListaPage> {
  final _debouncer = Debouncer(milliseconds: 500);

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    ref.read(notificationNotifierProvider.notifier).haveNotification();
  }

  @override
  Widget build(BuildContext context) {
    final stateSync = ref.watch(syncNotifierProvider);

    ref.listen<AsyncValue>(
      articuloIndexScreenControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    ref.listen<AsyncValue>(
      notificationNotifierProvider,
      (_, state) => state.maybeWhen(
        orElse: () {},
        data: (notificationId) {
          if (notificationId != null) {
            context.router
                .push(NotificationDetailRoute(notificationId: notificationId));
          }
        },
      ),
    );

    return Scaffold(
      key: scaffoldKey,
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        scaffoldKey: scaffoldKey,
        isSearchingFirst: widget.isSearchArticuloForForm,
        title: S.of(context).articulo_index_titulo,
        searchTitle: S.of(context).articulo_index_buscarArticulos,
        onChanged: (searchText) => _debouncer.run(
          () => ref.read(articulosSearchQueryStateProvider.notifier).state =
              searchText,
        ),
      ),
      body: stateSync.maybeWhen(
        orElse: () => ArticleListViewWidget(
          stateSync: stateSync,
          ref: ref,
          isSearchArticuloForForm: widget.isSearchArticuloForForm,
        ),
        synchronized: () => RefreshIndicator(
          onRefresh: () => refreshArticleDb(ref),
          child: ArticleListViewWidget(
            stateSync: stateSync,
            ref: ref,
            isSearchArticuloForForm: widget.isSearchArticuloForForm,
          ),
        ),
      ),
    );
  }

  Future<void> refreshArticleDb(WidgetRef ref) async {
    await ref
        .read(syncServiceProvider)
        .syncAllArticulosRelacionados(isInMainThread: true);

    ref.invalidate(articuloLastSyncDateProvider);

    ref.invalidate(articuloIndexScreenControllerProvider);
  }
}

class ArticleListViewWidget extends StatelessWidget {
  const ArticleListViewWidget({
    super.key,
    required this.stateSync,
    required this.ref,
    required this.isSearchArticuloForForm,
  });

  final SyncControllerState stateSync;
  final WidgetRef ref;
  final bool isSearchArticuloForForm;

  @override
  Widget build(BuildContext context) {
    final stateArticuloListCount =
        ref.watch(articuloIndexScreenControllerProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        stateSync.maybeWhen(
          orElse: () => const LinearProgressIndicator(),
          synchronized: () {
            final stateLastSyncDate = ref.watch(articuloLastSyncDateProvider);

            return stateLastSyncDate.when(
                data: (fechaUltimaSync) =>
                    UltimaSyncDateWidget(ultimaSyncDate: fechaUltimaSync),
                error: (_, __) => Container(),
                loading: () => const ProgressIndicatorWidget());
          },
        ),
        gapH8,
        Expanded(
          child: stateArticuloListCount.maybeWhen(
            data: (count) => ListView.separated(
              separatorBuilder: (context, i) => const Divider(),
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: count,
              itemBuilder: (context, i) => ref
                  .watch(ArticuloIndexScreenPaginatedControllerProvider(
                      page: i ~/ ArticuloRepository.pageSize))
                  .maybeWhen(
                    data: (articuloList) => GestureDetector(
                      onTap: () => (!isSearchArticuloForForm)
                          ? navigateToArticuloDetalPage(context,
                              articuloList[i % ArticuloRepository.pageSize].id)
                          : selectArticuloForFromPage(context, ref,
                              articuloList[i % ArticuloRepository.pageSize]),
                      child: ArticuloListaTile(
                        articulo: articuloList[i % ArticuloRepository.pageSize],
                      ),
                    ),
                    orElse: () => const ArticuloListShimmer(),
                  ),
            ),
            orElse: () => const ProgressIndicatorWidget(),
          ),
        ),
      ],
    );
  }

  void navigateToArticuloDetalPage(BuildContext context, String id) {
    context.router.push(ArticuloDetalleRoute(articuloId: id));
  }

  void selectArticuloForFromPage(
      BuildContext context, WidgetRef ref, Articulo articulo) {
    ref.read(articuloForFromStateProvider.notifier).state = articulo;
    context.router.pop();
  }
}
