import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/last_sync_date_widget.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/index/articulo_list_shimmer.dart';
import 'package:jbm_nikel_mobile/src/features/sync/application/sync_notifier_provider.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo.dart';
import 'articulo_lista_tile.dart';
import 'articulo_search_controller.dart';

class ArticuloListaPage extends ConsumerWidget {
  ArticuloListaPage({super.key, required this.isSearchArticuloForForm});

  final bool isSearchArticuloForForm;

  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateLasySyncDate = ref.watch(articuloLastSyncDateProvider);
    ref.listen<AsyncValue>(
      articuloIndexScreenControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    final stateArticuloListCount =
        ref.watch(articuloIndexScreenControllerProvider);

    final stateSync = ref.watch(syncNotifierProvider);

    return Scaffold(
      drawer: (!isSearchArticuloForForm) ? const AppDrawer() : null,
      appBar: CustomSearchAppBar(
        isSearchingFirst: isSearchArticuloForForm,
        title: S.of(context).articulo_index_titulo,
        searchTitle: S.of(context).articulo_index_buscarArticulos,
        onChanged: (searchText) {
          _debouncer.run(() {
            ref.read(articulosSearchQueryStateProvider.notifier).state =
                searchText;
          });
        },
      ),
      body: RefreshIndicator(
        onRefresh: () => refreshArticleDb(ref),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            stateSync.maybeWhen(
                orElse: () => Container(),
                synchronized: () {
                  print('Syncrhonized');
                  return Container();
                },
                synchronizing: () => const ProgressIndicatorWidget()),
            stateLasySyncDate.when(
                data: (fechaUltimaSync) =>
                    UltimaSyncDateWidget(ultimaSyncDate: fechaUltimaSync),
                error: (_, __) => Container(),
                loading: () => const ProgressIndicatorWidget()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
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
                                ? navigateToArticuloDetalPage(
                                    context,
                                    articuloList[
                                            i % ArticuloRepository.pageSize]
                                        .id)
                                : selectArticuloForFromPage(
                                    context,
                                    ref,
                                    articuloList[
                                        i % ArticuloRepository.pageSize]),
                            child: ArticuloListaTile(
                              articulo:
                                  articuloList[i % ArticuloRepository.pageSize],
                            ),
                          ),
                          orElse: () => const ArticuloListShimmer(),
                        ),
                  ),
                  orElse: () => const ProgressIndicatorWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
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

  Future<void> refreshArticleDb(WidgetRef ref) async {
    await ref.read(syncServiceProvider).syncAllArticulosRelacionados();

    ref.refresh(articuloLastSyncDateProvider);

    ref.refresh(articuloIndexScreenControllerProvider);
  }
}
