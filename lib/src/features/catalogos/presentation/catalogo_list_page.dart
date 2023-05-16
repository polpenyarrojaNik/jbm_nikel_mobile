import 'package:auto_route/auto_route.dart';
import 'package:better_open_file/better_open_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/infrastructure/catalogo_repository.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/presentation/catalogo_fliter_dropdown_widget.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/presentation/catalogo_list_tile.dart';

import '../../../../generated/l10n.dart';
import '../../../core/helpers/debouncer.dart';
import '../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../core/presentation/toasts.dart';
import '../../../core/routing/app_auto_router.dart';
import 'catalogo_adjunto_controller.dart';
import 'catalogo_search_controller.dart';

class CatalogoListaPage extends ConsumerStatefulWidget {
  const CatalogoListaPage({super.key});

  @override
  ConsumerState<CatalogoListaPage> createState() => _CatalogoListaPageState();
}

class _CatalogoListaPageState extends ConsumerState<CatalogoListaPage> {
  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue>(
      catalogoIndexScreenControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    ref.listen<CatalogoAdjuntoState>(
      catalogoAdjuntoControllerProvider,
      (_, state) {
        state.when(
            data: (file, descarga) => (file != null && descarga)
                ? OpenFile.open(file.path)
                : (file != null)
                    ? context.router.push(
                        CatalogoPdfViewerRoute(pdfFile: file),
                      )
                    : null,
            error: (error) => showToast(error.toString(), context),
            loading: () => showToast(
                S.of(context).catalogos_index_catalogoAdjunto_abriendoArchivo,
                context),
            initial: () => null);
      },
    );
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        isSearchingFirst: false,
        title: S.of(context).catalogos_index_titulo,
        searchTitle: S.of(context).catalogos_index_buscarCatalogo,
        onChanged: (searchText) => _debouncer.run(
          () => ref.read(catalogoSearchQueryStateProvider.notifier).state =
              searchText,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            FilterDropdownWidget(),
            Expanded(child: CatalogoListViewWidget()),
          ],
        ),
      ),
    );
  }
}

class FilterDropdownWidget extends ConsumerWidget {
  const FilterDropdownWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TipoCatalogoFilterDropdown(),
        TipoPrecioCatalogoFilterDropdown(),
        IdiomaCatalogoFilterDropdown(),
      ],
    );
  }
}

class TipoCatalogoFilterDropdown extends ConsumerWidget {
  const TipoCatalogoFilterDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(tipoCatalogoListProvider);
    return state.maybeWhen(
      orElse: () => const ProgressIndicatorWidget(),
      data: (tipoCatalogoList) => CatalogoFilterDropdownWidget(
        dropdownName: 'tipoCatalogo',
        filterList: tipoCatalogoList,
        labelString: S.of(context).catalogos_index_tipoCatalogo,
        setFilter: (filterValue) => ref
            .read(tipoCatalogoQueryStateProvider.notifier)
            .state = filterValue,
      ),
    );
  }
}

class TipoPrecioCatalogoFilterDropdown extends ConsumerWidget {
  const TipoPrecioCatalogoFilterDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(tipoPrecioCatalogoListProvider);
    return state.maybeWhen(
      orElse: () => const ProgressIndicatorWidget(),
      data: (tipoPrecioCatalogoList) => CatalogoFilterDropdownWidget(
        dropdownName: 'tipoPrecioCatalogo',
        filterList: tipoPrecioCatalogoList,
        labelString: S.of(context).catalogos_index_precio,
        setFilter: (filterValue) => ref
            .read(tipoPrecioCatalogoQueryStateProvider.notifier)
            .state = filterValue,
      ),
    );
  }
}

class IdiomaCatalogoFilterDropdown extends ConsumerWidget {
  const IdiomaCatalogoFilterDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(idiomaCatalogoListProvider);
    return state.maybeWhen(
      orElse: () => const ProgressIndicatorWidget(),
      data: (idiomaCatalogoList) => CatalogoFilterDropdownWidget(
        dropdownName: 'idiomaCatalogo',
        filterList: idiomaCatalogoList,
        labelString: S.of(context).catalogos_index_idioma,
        setFilter: (filterValue) => ref
            .read(idiomaCatalogoQueryStateProvider.notifier)
            .state = filterValue,
        isIdioma: true,
      ),
    );
  }
}

class CatalogoListViewWidget extends ConsumerWidget {
  const CatalogoListViewWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateCatalogoList = ref.watch(catalogoIndexScreenControllerProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: stateCatalogoList.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        data: (catalgoList) => LayoutBuilder(
          builder: (context, boxConstrains) => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: boxConstrains.maxWidth > 1080
                    ? 5
                    : boxConstrains.maxWidth > 560
                        ? 3
                        : 2,
                childAspectRatio: 1 / 1.95),
            itemCount: catalgoList.length,
            itemBuilder: (context, i) => CatalogoListTile(
                catalogo: catalgoList[i], boxConstrains: boxConstrains),
          ),
        ),
      ),
    );
  }
}
