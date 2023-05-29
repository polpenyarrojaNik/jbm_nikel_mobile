import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/error_message_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/edit/pais_search_page_controller.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';

class PaisSearchDialog extends ConsumerWidget {
  PaisSearchDialog({super.key});

  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(paisSearchPageControllerProvider);
    return AlertDialog(
      title: CustomSearchAppBar(
        isSearchingFirst: true,
        title: S.of(context).search,
        searchTitle: S.of(context).search,
        onChanged: (searchText) => _debouncer.run(
          () => ref.read(paisesSearchQueryStateProvider.notifier).state =
              searchText,
        ),
      ),
      content: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: state.when(
          data: (paisList) => ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, i) => GestureDetector(
              onTap: () => context.router.pop(
                paisList[i],
              ),
              child: Text(paisList[i].descripcion),
            ),
            separatorBuilder: (context, i) => const Divider(),
            itemCount: paisList.length,
          ),
          error: (error, _) => Center(
            child: ErrorMessageWidget(error.toString()),
          ),
          loading: () => const Center(
            child: ProgressIndicatorWidget(),
          ),
        ),
      ),
    );
  }
}
