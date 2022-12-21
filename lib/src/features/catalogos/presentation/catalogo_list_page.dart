import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/infrastructure/catalogo_repository.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/presentation/catalogo_list_tile.dart';

import '../../../core/helpers/debouncer.dart';
import '../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../core/presentation/common_widgets/custom_search_app_bar.dart';
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
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        isSearchingFirst: false,
        title: 'Catalgos',
        searchTitle: 'Buscar Catalogo',
        onChanged: (searchText) => _debouncer.run(
          () {
            ref.read(catalogoSearchQueryStateProvider.notifier).state =
                searchText;
          },
        ),
      ),
      body: Column(
        children: const [
          FilterDropdownWidget(),
          CatalogoListViewWidget(),
        ],
      ),
    );
  }
}

class FilterDropdownWidget extends ConsumerWidget {
  const FilterDropdownWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: const [
        TipoCatalogoFilterDropdown(),
        TipoPrecioCatalogoFilterDropdown(),
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
      data: (tipoCatalogoList) => FormBuilderDropdown(
        isExpanded: true,
        initialValue: tipoCatalogoList[0],
        name: 'tipoCatalogo',
        items: tipoCatalogoList
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(e.descripcionES),
                onTap: () =>
                    ref.read(tipoCatalogoQueryStateProvider.notifier).state = e,
              ),
            )
            .toList(),
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
      data: (tipoPrecioCatalogoList) => FormBuilderDropdown(
        name: 'tipoPrecioCatalogo',
        isExpanded: true,
        initialValue: tipoPrecioCatalogoList[0],
        items: tipoPrecioCatalogoList
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(e.descripcionES),
                onTap: () => ref
                    .read(tipoPrecioCatalogoQueryStateProvider.notifier)
                    .state = e,
              ),
            )
            .toList(),
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
      padding: const EdgeInsets.all(16.0),
      child: stateCatalogoList.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        data: (catalgoList) => ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, i) => const Divider(),
          itemBuilder: (context, i) =>
              CatalogoListTile(catalogo: catalgoList[i]),
          itemCount: catalgoList.length,
        ),
      ),
    );
  }
}
