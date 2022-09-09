import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_repository.dart';

import '../../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/last_sync_date_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

import '../../../../core/routing/app_router.dart';
import 'cliente_lista_tile.dart';

class ClienteListaPage extends ConsumerStatefulWidget {
  const ClienteListaPage({super.key});

  @override
  ConsumerState<ClienteListaPage> createState() => _ClienteListPageState();
}

class _ClienteListPageState extends ConsumerState<ClienteListaPage> {
  final scrollController = ScrollController();

  int page = 1;
  bool isFirstTime = true;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(clienteListaStreamProvider(page));
    final stateUltimaSync = ref.watch(clienteUltimaSyncProvider);

    scrollController.addListener(() {
      final metrics = scrollController.position;
      final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;
      if (isFirstTime && metrics.pixels >= limit) {
        isFirstTime = false;
        page++;
      }
    });

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        title: 'Cliente',
        searchTitle: 'Search Cliente...',
        onChanged: (searchText) => (print(searchText)),
        addActionButton: IconButton(
          onPressed: () => navigateToClientesAlrededor(),
          icon: (const Icon(Icons.near_me_outlined)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            stateUltimaSync.when(
                data: (ultimaSyncDate) =>
                    UltimaSyncDateWidget(ultimaSyncDate: ultimaSyncDate),
                error: (e, _) => ErrorMessageWidget(e.toString()),
                loading: () => const ProgressIndicatorWidget()),
            Expanded(
              child: state.when(
                loading: () => const ProgressIndicatorWidget(),
                error: (e, _) => ErrorMessageWidget(e.toString()),
                data: (clienteList) => (clienteList.isEmpty)
                    ? Container()
                    : ListView.builder(
                        shrinkWrap: true,
                        controller: scrollController,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: clienteList.length,
                        itemBuilder: (context, i) =>
                            ClienteListaTile(cliente: clienteList[i]),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToClientesAlrededor() {
    context.goNamed(
      AppRoute.clientealrededor.name,
    );
  }
}
