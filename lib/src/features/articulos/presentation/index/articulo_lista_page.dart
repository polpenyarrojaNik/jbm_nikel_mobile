import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';

import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/routing/app_router.dart';
import '../../infrastructure/articulo_repository.dart';
import 'articulo_lista_tile.dart';

class ArticuloListaPage extends ConsumerWidget {
  const ArticuloListaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();

    ref.listen<AsyncValue>(
      articuloListaStreamProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );
    final state = ref.watch(articuloListaStreamProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        title: 'Articulos',
        searchTitle: 'Search articulo...',
        onChanged: (searchText) => {print(searchText)},
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
                  controller: scrollController,
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
