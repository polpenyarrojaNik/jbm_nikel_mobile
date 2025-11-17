import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../core/presentation/common_widgets/custom_search_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import 'provincia_search_page_controller.dart';

class ProvinciaSearchDialog extends ConsumerWidget {
  final String? paisId;
  ProvinciaSearchDialog({super.key, required this.paisId});

  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(provinciaSearchPageControllerProvider(paisId));
    return AlertDialog(
      title: CustomSearchAppBar(
        isSearchingFirst: true,
        title: S.of(context).search,
        searchTitle: S.of(context).search,
        onChanged: (searchText) => _debouncer.run(
          () => ref
              .read(provinciasSearchQueryParamsControllerProvider.notifier)
              .setSearchQuery(searchText),
        ),
      ),
      content: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: state.when(
          data: (provinciaList) => ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, i) => GestureDetector(
              onTap: () => context.router.maybePop(provinciaList[i]),
              child: Text(
                provinciaList[i].provincia ?? provinciaList[i].provinciaId,
              ),
            ),
            separatorBuilder: (context, i) => const Divider(),
            itemCount: provinciaList.length,
          ),
          error: (error, _) =>
              Center(child: ErrorMessageWidget(error.toString())),
          loading: () => const Center(child: ProgressIndicatorWidget()),
        ),
      ),
    );
  }
}
