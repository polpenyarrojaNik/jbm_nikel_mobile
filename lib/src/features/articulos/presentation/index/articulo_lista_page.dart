import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/last_sync_date_widget.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/index/articulo_list_shimmer.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/articulo.dart';
import 'articulo_lista_tile.dart';
import 'articulo_search_state_provider.dart';

class ArticuloListaPage extends ConsumerStatefulWidget {
  const ArticuloListaPage({super.key, required this.isSearchArticuloForForm});

  final bool isSearchArticuloForForm;

  @override
  ConsumerState<ArticuloListaPage> createState() => _ArticuloListaPageState();
}

class _ArticuloListaPageState extends ConsumerState<ArticuloListaPage> {
  final _scrollController = ScrollController();
  bool canLoadNextPage = false;
  final _debouncer = Debouncer(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_dismissOnScreenKeyboard);
    _scrollController.addListener(() {
      final metrics = _scrollController.position;
      final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;

      if (canLoadNextPage && metrics.pixels >= limit) {
        canLoadNextPage = false;
        ref.read(articulosSearchResultsProvider.notifier).getNextPage();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_dismissOnScreenKeyboard);
    super.dispose();
  }

  // When the search text field gets the focus, the keyboard appears on mobile.
  // This method is used to dismiss the keyboard when the user scrolls.
  void _dismissOnScreenKeyboard() {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final stateLasySyncDate = ref.watch(articuloLastSyncDateProvider);
    final state = ref.watch(articulosSearchResultsProvider);
    ref.listen<AsyncValue>(
      articulosSearchResultsProvider,
      (_, state) {
        state.whenData((value) {
          canLoadNextPage = true;
        });
        state.showAlertDialogOnError(context);
      },
    );
    return Scaffold(
      drawer: (!widget.isSearchArticuloForForm) ? const AppDrawer() : null,
      appBar: CustomSearchAppBar(
        isSearchingFirst: widget.isSearchArticuloForForm,
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
            stateLasySyncDate.when(
                data: (fechaUltimaSync) =>
                    UltimaSyncDateWidget(ultimaSyncDate: fechaUltimaSync),
                error: (_, __) => Container(),
                loading: () => const ProgressIndicatorWidget()),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, i) => const Divider(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(16.0),
                controller: _scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: state.when(
                  data: (articuloList) => articuloList.length,
                  loading: () => 1,
                  error: (error, _) => 1,
                ),
                itemBuilder: (context, i) => state.when(
                  data: (articuloList) => state.isRefreshing
                      ? const ArticuloListShimmer()
                      : GestureDetector(
                          onTap: () => (!widget.isSearchArticuloForForm)
                              ? navigateToArticuloDetalPage(
                                  context, articuloList[i].id)
                              : selectArticuloForFromPage(
                                  context, articuloList[i]),
                          child: ArticuloListaTile(
                            articulo: articuloList[i],
                          ),
                        ),
                  loading: () => const ArticuloListShimmer(),
                  error: (error, _) => ErrorMessageWidget(error.toString()),
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

  void selectArticuloForFromPage(BuildContext context, Articulo articulo) {
    ref.read(articuloForFromStateProvider.notifier).state = articulo;
    context.router.pop();
  }

  Future<void> refreshArticleDb(WidgetRef ref) async {
    await ref.read(syncServiceProvider).syncAllArticulosRelacionados();

    ref.refresh(articuloLastSyncDateProvider);

    ref.refresh(articulosSearchResultsProvider);
  }
}
