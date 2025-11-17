import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../generated/l10n.dart';
import '../../../core/helpers/debouncer.dart';
import '../../../core/infrastructure/sync_service.dart';
import '../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../core/presentation/common_widgets/async_value_ui.dart';
import '../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../core/routing/app_auto_router.dart';
import '../../notifications/core/application/notification_provider.dart';
import '../domain/idioma_catalogo.dart';
import '../domain/tipo_catalogo.dart';
import '../domain/tipo_precio_catalogo.dart';
import '../infrastructure/catalogo_repository.dart';
import 'catalogo_fliter_dropdown_widget.dart';
import 'catalogo_list_tile.dart';
import 'catalogo_search_controller.dart';

@RoutePage()
class CatalogoListaPage extends ConsumerStatefulWidget {
  const CatalogoListaPage({super.key});

  @override
  ConsumerState<CatalogoListaPage> createState() => _CatalogoListaPageState();
}

class _CatalogoListaPageState extends ConsumerState<CatalogoListaPage> {
  final _debouncer = Debouncer(milliseconds: 500);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    ref.read(notificationProvider.notifier).build();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<void>>(
      catalogoIndexScreenControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    ref.listen<AsyncValue<String?>>(
      notificationProvider,
      (_, state) => state.whenData((notificationId) {
        if (notificationId != null) {
          context.router.push(
            NotificationDetailRoute(notificationId: notificationId),
          );
        }
      }),
    );

    return Scaffold(
      key: scaffoldKey,
      drawer: const AppDrawer(),
      appBar: CustomSearchAppBar(
        scaffoldKey: scaffoldKey,
        isSearchingFirst: false,
        title: S.of(context).catalogos_index_titulo,
        searchTitle: S.of(context).catalogos_index_buscarCatalogo,
        onChanged: (searchText) => _debouncer.run(
          () => ref
              .read(catalogoSearchQueryParamsControllerProvider.notifier)
              .setSearchQuery(searchText),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const FilterDropdownWidget(),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async => syncCatalogs(context, ref),
                child: const CatalogoListViewWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> syncCatalogs(BuildContext context, WidgetRef ref) async {
    try {
      await ref.read(syncServiceProvider).syncCatalogos(isInMainThread: true);

      ref.invalidate(catalogoIndexScreenControllerProvider);
    } catch (e) {
      if (context.mounted) {
        await context.showErrorBar(
          content: Text(S.of(context).noSeHaPodidoSincronizar),
        );
      }
    }
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
      orElse: () => Container(),
      loading: () => const ProgressIndicatorWidget(),
      data: (tipoCatalogoList) => CatalogoFilterDropdownWidget(
        dropdownName: 'tipoCatalogo',
        filterList: tipoCatalogoList,
        labelString: S.of(context).catalogos_index_tipoCatalogo,
        setFilter: (filterValue) => ref
            .read(tipoCatalogoQueryParamControllerProvider.notifier)
            .setTipoCatalogoQuery(filterValue as TipoCatalogo),
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
      orElse: () => Container(),
      loading: () => const ProgressIndicatorWidget(),
      data: (tipoPrecioCatalogoList) => CatalogoFilterDropdownWidget(
        dropdownName: 'tipoPrecioCatalogo',
        filterList: tipoPrecioCatalogoList,
        labelString: S.of(context).catalogos_index_precio,
        setFilter: (filterValue) => ref
            .read(tipoPrecioCatalogoQueryParamControllerProvider.notifier)
            .setTipoPrecioCatalogoQuery(filterValue as TipoPrecioCatalogo),
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
      orElse: () => Container(),
      loading: () => const ProgressIndicatorWidget(),
      data: (idiomaCatalogoList) => CatalogoFilterDropdownWidget(
        dropdownName: 'idiomaCatalogo',
        filterList: idiomaCatalogoList,
        labelString: S.of(context).catalogos_index_idioma,
        setFilter: (filterValue) => ref
            .read(idiomaCatalogoQueryParamControllerProvider.notifier)
            .setIdiomaCatalogoQuery(filterValue as IdiomaCatalogo),
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
          builder: (context, boxConstrains) => ListView.separated(
            itemBuilder: (context, i) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CatalogoListTile(
                      catalogo: catalgoList[i * 2],
                      boxConstrains: boxConstrains,
                    ),
                  ),
                  const Gap(8),
                  if ((i * 2) + 1 < catalgoList.length)
                    Expanded(
                      child: CatalogoListTile(
                        catalogo: catalgoList[(i * 2) + 1],
                        boxConstrains: boxConstrains,
                      ),
                    )
                  else
                    const Expanded(child: SizedBox()),
                ],
              );
            },
            separatorBuilder: (context, i) => const Gap(8),
            itemCount: (catalgoList.length / 2).ceil(),
          ),
        ),
      ),
    );
  }
}
