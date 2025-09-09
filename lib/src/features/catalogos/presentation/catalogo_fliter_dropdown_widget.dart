import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/presentation/common_widgets/app_decoration.dart';
import '../../usuario/application/usuario_notifier.dart';
import '../domain/idioma_catalogo.dart';

class CatalogoFilterDropdownWidget extends ConsumerWidget {
  const CatalogoFilterDropdownWidget({
    super.key,
    required this.dropdownName,
    required this.labelString,
    required this.filterList,
    required this.setFilter,
    this.isIdioma = false,
  });

  final String dropdownName;
  final String labelString;
  final List<dynamic> filterList;
  final Function(dynamic filterValue) setFilter;
  final bool isIdioma;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 112,
      child: FormBuilderDropdown(
        decoration: AppDecoration.inputDecorationinFilter(context, labelString),
        initialValue: isIdioma
            ? getInitialLanguage(ref, filterList)
            : filterList[0],
        name: dropdownName,
        items: filterList
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e.descripcion as String,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () => setFilter(e),
              ),
            )
            .toList(),
      ),
    );
  }

  IdiomaCatalogo getInitialLanguage(WidgetRef ref, List<dynamic> filterList) {
    filterList = filterList as List<IdiomaCatalogo>;

    final usuario = ref.watch(usuarioNotifierProvider);

    for (var i = 0; i < filterList.length; i++) {
      if (filterList[i].idiomaId == usuario?.idiomaId) {
        return filterList[i];
      }
    }
    return filterList[0];
  }
}
