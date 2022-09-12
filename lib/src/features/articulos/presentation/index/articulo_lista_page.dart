import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';

import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/routing/app_router.dart';
import 'articulo_lista_tile.dart';
import 'articulo_search_state_provider.dart';

class ArticuloListaPage extends ConsumerStatefulWidget {
  const ArticuloListaPage({super.key});

  @override
  ConsumerState<ArticuloListaPage> createState() => _ArticuloListaPageState();
}

class _ArticuloListaPageState extends ConsumerState<ArticuloListaPage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_dismissOnScreenKeyboard);
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
      (_, state) => state.showAlertDialogOnError(context),
    );
    final state = ref.watch(articulosSearchResultsProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        title: 'Articulos',
        searchTitle: 'Search articulo...',
        onChanged: (searchText) => ref
            .read(articulosSearchQueryStateProvider.notifier)
            .state = searchText,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: state.when(
          loading: () => const ProgressIndicatorWidget(),
          error: (e, _) => ErrorMessageWidget(e.toString()),
          data: (articuloList) => (articuloList.isEmpty)
              ? Container()
              : ListView.builder(
                  shrinkWrap: true,
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: articuloList.length,
                  itemBuilder: (context, i) => ArticuloListaTile(
                    articulo: articuloList[i],
                    appRoute: AppRoutes.articuloshow,
                    clienteId: null,
                  ),
                ),
        ),
      ),
    );
  }
}
