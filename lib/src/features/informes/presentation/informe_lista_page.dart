import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../generated/l10n.dart';
import '../../../core/helpers/debouncer.dart';
import '../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../core/presentation/common_widgets/sin_resultados_widget.dart';
import '../domain/informe.dart';
import '../infrastructure/informe_repository.dart';
import 'informe_lista_controller.dart';

@RoutePage()
class InformeListaPage extends ConsumerStatefulWidget {
  InformeListaPage({super.key});

  final String titleScreen = S.current.informes;

  @override
  ConsumerState<InformeListaPage> createState() => _InformeListaPageState();
}

class _InformeListaPageState extends ConsumerState<InformeListaPage> {
  final _debouncer = Debouncer(milliseconds: 500);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final stateInformeListCount = ref.watch(
      informeIndexScreenControllerProvider,
    );

    return Scaffold(
      key: scaffoldKey,
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        titleScreen: widget.titleScreen,
        scaffoldKey: scaffoldKey,
        isSearchingFirst: false,
        title: S.of(context).informes,
        searchTitle: S.of(context).informes_buscarInformes,
        onChanged: (searchText) => _debouncer.run(
          () => ref
              .read(informeSearchQueryParamsControllerProvider.notifier)
              .setSearchQuery(searchText),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(informeIndexScreenPaginatedControllerProvider);
          ref.invalidate(informeIndexScreenControllerProvider);
          await ref.read(informeIndexScreenControllerProvider.future);
        },
        child: stateInformeListCount.when(
          loading: () => const Center(child: ProgressIndicatorWidget()),
          error: (error, _) =>
              Center(child: ErrorMessageWidget(error.toString())),
          data: (count) => count > 0
              ? ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (context, i) => const Divider(),
                  itemCount: count,
                  itemBuilder: (context, i) => ref
                      .watch(
                        informeIndexScreenPaginatedControllerProvider(
                          page: i ~/ InformeRepository.pageSize,
                        ),
                      )
                      .maybeWhen(
                        data: (informePage) => _InformeListaTile(
                          informe: informePage
                              .informeList[i % InformeRepository.pageSize],
                        ),
                        orElse: () => const ListTile(),
                      ),
                )
              : const SinResultadosWidget(),
        ),
      ),
    );
  }
}

class _InformeListaTile extends StatelessWidget {
  const _InformeListaTile({required this.informe});

  final Informe informe;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(MdiIcons.fileChartOutline),
      title: Text(informe.nombre),
      trailing: const Icon(Icons.open_in_new),
      onTap: () => _openInforme(context),
    );
  }

  Future<void> _openInforme(BuildContext context) async {
    final uri = Uri.tryParse(informe.url);
    var launched = false;
    if (uri != null) {
      try {
        launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
      } catch (_) {}
    }
    if (!launched && context.mounted) {
      await context.showErrorBar(
        content: Text(S.of(context).informes_noSePuedeAbrir),
      );
    }
  }
}
