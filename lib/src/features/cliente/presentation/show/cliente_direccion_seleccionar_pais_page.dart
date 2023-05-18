import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/async_value_ui.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import 'cliente_direccion_seleccionar_pais_search_controller.dart';

@RoutePage()
class ClienteDireccionSeleccionarPaisPage extends ConsumerWidget {
  ClienteDireccionSeleccionarPaisPage({super.key});
  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue>(
      clienteDireccionSeleccionarPaisPageControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    final value =
        ref.watch(clienteDireccionSeleccionarPaisPageControllerProvider);

    return Scaffold(
      appBar: CustomSearchAppBar(
        isSearchingFirst: true,
        title: S.of(context).cliente_index_titulo,
        searchTitle: S.of(context).cliente_index_buscarClientes,
        onChanged: (searchText) => _debouncer.run(
          () {
            ref
                .read(clienteDireccionSeleccionarPaisSearchQueryStateProvider
                    .notifier)
                .state = searchText;
          },
        ),
      ),
      body: value.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        data: (paisList) => ListView.separated(
          separatorBuilder: (context, i) => const Divider(),
          shrinkWrap: true,
          padding: const EdgeInsets.all(16),
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: paisList.length,
          itemBuilder: (context, i) => GestureDetector(
            onTap: () => onSelectedPais(context, paisList[i]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(paisList[i].descripcion),
                ),
                IconButton(
                  onPressed: () => onSelectedPais(context, paisList[i]),
                  icon: const Icon(Icons.navigate_next),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onSelectedPais(BuildContext context, Pais pais) {
    context.router.pop(pais);
  }
}
