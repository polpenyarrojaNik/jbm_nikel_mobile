import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/routing/app_router.dart';
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
  int page = 1;
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
        page++;
        ref.read(articulosPaginationQueryStateProvider.notifier).state = page;
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
    ref.listen<AsyncValue>(
      articulosSearchResultsProvider,
      (_, state) {
        canLoadNextPage = true;
        state.showAlertDialogOnError(context);
      },
    );
    final state = ref.watch(articulosSearchResultsProvider);

    return Scaffold(
      drawer: (!widget.isSearchArticuloForForm) ? const AppDrawer() : null,
      appBar: CustomSearchAppBar(
        title: S.of(context).articulo_index_titulo,
        searchTitle: S.of(context).articulo_index_buscarArticulos,
        onChanged: (searchText) {
          _debouncer.run(() {
            ref.read(articulosSearchQueryStateProvider.notifier).state =
                searchText;
            ref.read(articulosPaginationQueryStateProvider.notifier).state = 1;
          });
        },
      ),
      body: RefreshIndicator(
        onRefresh: () => refreshArticleDb(ref),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: state.when(
            loading: () => const ProgressIndicatorWidget(),
            error: (e, _) => ErrorMessageWidget(e.toString()),
            data: (articuloList) => (articuloList.isEmpty)
                ? Container()
                : ListView.separated(
                    separatorBuilder: (context, i) => const Divider(),
                    shrinkWrap: true,
                    controller: _scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: articuloList.length,
                    itemBuilder: (context, i) => GestureDetector(
                      onTap: () => (!widget.isSearchArticuloForForm)
                          ? navigateToArticuloDetalPage(
                              context, articuloList[i].id)
                          : selectArticuloForFromPage(context, articuloList[i]),
                      child: ArticuloListaTile(
                        articulo: articuloList[i],
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  void navigateToArticuloDetalPage(BuildContext context, String id) {
    final params = {'articuloId': id};

    context.goNamed(AppRoutes.articuloshow.name, params: params);
  }

  void selectArticuloForFromPage(BuildContext context, Articulo articulo) {
    ref.read(articuloForFromStateProvider.notifier).state = articulo;
    context.pop();
  }

  Future<void> refreshArticleDb(WidgetRef ref) async {
    await ref.read(syncServiceProvider).syncAllArticulosRelacionados();

    ref.refresh(articulosSearchResultsProvider);
  }
}
