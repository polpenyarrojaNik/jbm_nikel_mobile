import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/custom_search_app_bar.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/index/visita_lista_shimmer.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/index/visita_lista_tile.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/index/visita_search_state.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../infrastructure/visita_repository.dart';

class VisitaListaPage extends ConsumerStatefulWidget {
  const VisitaListaPage({super.key});

  @override
  ConsumerState<VisitaListaPage> createState() => _VisitaListaPageState();
}

class _VisitaListaPageState extends ConsumerState<VisitaListaPage> {
  final _scrollController = ScrollController();
  final _debouncer = Debouncer(milliseconds: 500);

  int page = 1;
  String searchText = '';

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
        ref.read(visitasSearchResultsProvider.notifier).getNextPage();
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
    final stateLasySyncDate = ref.watch(visitaLastSyncDateProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        isSearchingFirst: false,
        title: S.of(context).visita_index_titulo,
        searchTitle: S.of(context).visita_index_buscarVisitas,
        onChanged: (searchText) => _debouncer.run(
          () {
            ref.read(visitasSearchQueryStateProvider.notifier).state =
                searchText;
          },
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () => refreshVisitsDB(ref),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            stateLasySyncDate.when(
                data: (fechaUltimaSync) =>
                    UltimaSyncDateWidget(ultimaSyncDate: fechaUltimaSync),
                error: (_, __) => Container(),
                loading: () => const ProgressIndicatorWidget()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.separated(
                  separatorBuilder: (context, i) => const Divider(),
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.when(
                    data: (visitaList) => visitaList.length,
                    loading: () => 1,
                    error: (error, _) => 1,
                  ),
                  itemBuilder: (context, i) => state.when(
                    data: (visitaList) => state.isRefreshing
                        ? const VisitaListShimmer()
                        : VisitaListaTile(
                            visita: visitaList[i], navigatedFromCliente: false),
                    loading: () => const VisitaListShimmer(),
                    error: (error, _) => ErrorMessageWidget(error.toString()),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => navigateToCreateVisitas(),
      ),
    );
  }

  Future<void> refreshVisitsDB(WidgetRef ref) async {
    await ref.read(syncServiceProvider).syncAllVisitasRelacionados();
    ref.refresh(visitaLastSyncDateProvider);

    ref.invalidate(visitasSearchResultsProvider);
  }

  void navigateToCreateVisitas() {
    context.router.push(VisitaEditRoute());
  }
}
