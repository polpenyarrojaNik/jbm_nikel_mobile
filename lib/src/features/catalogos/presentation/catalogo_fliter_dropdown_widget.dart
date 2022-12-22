import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../core/presentation/common_widgets/app_decoration.dart';

class CatalogoFilterDropdownWidget extends StatelessWidget {
  const CatalogoFilterDropdownWidget(
      {super.key,
      required this.dropdownName,
      required this.labelString,
      required this.filterList,
      required this.setFilter});

  final String dropdownName;
  final String labelString;
  final List<dynamic> filterList;
  final Function(dynamic filterValue) setFilter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 112,
      child: FormBuilderDropdown(
        decoration: AppDecoration.inputDecorationinFilter(context, labelString),
        initialValue: filterList[0],
        name: dropdownName,
        items: filterList
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e.descripcion,
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
}
