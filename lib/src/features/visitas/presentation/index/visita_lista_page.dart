import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/custom_search_app_bar.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/index/visita_lista_tile.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/index/visita_search_state.dart';

import '../../../../core/helpers/debouncer.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class VisitaListaPage extends ConsumerStatefulWidget {
  const VisitaListaPage({super.key});

  @override
  ConsumerState<VisitaListaPage> createState() => _VisitaListaPageState();
}

class _VisitaListaPageState extends ConsumerState<VisitaListaPage> {
  final _scrollController = ScrollController();
  final _debouncer = Debouncer(milliseconds: 500);

  int page = 1;
  bool canLoadNextPage = false;
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
        ref.read(visitasPaginationQueryStateProvider.notifier).state = page;
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
    final state = ref.watch(visitasSearchResultsProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        title: 'Visitas',
        searchTitle: 'Buscar visitas...',
        onChanged: (searchText) => _debouncer.run(
          () {
            ref.read(visitasSearchQueryStateProvider.notifier).state =
                searchText;
            ref.read(visitasPaginationQueryStateProvider.notifier).state = 1;
          },
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () => refreshVisitsDB(ref),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: state.when(
            loading: () => const ProgressIndicatorWidget(),
            error: (e, _) => ErrorMessageWidget(e.toString()),
            data: (visitasList) => (visitasList.isEmpty)
                ? const Center(child: Text('Sin resultados'))
                : ListView.separated(
                    separatorBuilder: (context, i) => const Divider(),
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    controller: _scrollController,
                    itemCount: visitasList.length,
                    itemBuilder: (context, i) =>
                        VisitaListaTile(visita: visitasList[i]),
                  ),
          ),
        ),
      ),
    );
  }

  Future<void> refreshVisitsDB(WidgetRef ref) async {
    await ref.read(syncServiceProvider).syncAllVisitasRelacionados();

    ref.read(visitasSearchQueryStateProvider.notifier).state = '';
    ref.read(visitasPaginationQueryStateProvider.notifier).state = 1;
  }
}
