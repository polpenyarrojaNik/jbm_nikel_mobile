import 'package:flutter/material.dart';
import 'package:form_builder_extra_fields/form_builder_extra_fields.dart';

class AppFormBuilderSearchableDropdown<T> extends StatelessWidget {
  const AppFormBuilderSearchableDropdown({
    super.key,
    this.autovalidateMode,
    this.enabled = true,
    this.focusNode,
    this.onSaved,
    this.validator,
    this.decoration = const InputDecoration(),
    required this.name,
    this.initialValue,
    this.onChanged,
    this.valueTransformer,
    this.onReset,
    this.asyncItems,
    this.autoValidateMode,
    this.compareFn,
    this.dropdownBuilder,
    this.dropdownSearchDecoration,
    this.dropdownSearchTextAlign,
    this.dropdownSearchTextAlignVertical,
    this.filterFn,
    this.itemAsString,
    this.items = const [],
    this.onBeforeChange,
    this.popupOnItemAdded,
    this.popupOnItemRemoved,
    this.popupSelectionWidget,
    this.selectedItem,
    this.selectedItems = const [],
    this.popupProps = const PopupProps.menu(
      showSearchBox: true,
      fit: FlexFit.loose,
    ),
    this.clearButtonProps,
    this.dropdownSearchTextStyle,
    this.dropdownButtonProps,
  });

  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;

  final String? Function(T?)? validator;
  final InputDecoration decoration;
  final String name;
  final T? initialValue;
  final Function(T?)? onSaved;
  final Function(T?)? onChanged;
  final Function(T?)? valueTransformer;
  final Function()? onReset;
  final bool enabled;
  final List<T> items;
  final T? selectedItem;
  final List<T> selectedItems;
  final DropdownSearchBuilder<T>? dropdownBuilder;
  final DropdownSearchItemAsString<T>? itemAsString;
  final DropdownSearchFilterFn<T>? filterFn;
  final DropdownSearchCompareFn<T>? compareFn;
  final InputDecoration? dropdownSearchDecoration;
  final TextAlign? dropdownSearchTextAlign;
  final TextAlignVertical? dropdownSearchTextAlignVertical;
  final AutovalidateMode? autoValidateMode;
  final BeforeChange<T>? onBeforeChange;
  final OnItemAdded<T>? popupOnItemAdded;
  final OnItemRemoved<T>? popupOnItemRemoved;
  final DropdownSearchPopupItemBuilder<T>? popupSelectionWidget;
  final Future<List<T>> Function(String)? asyncItems;
  final PopupProps<T> popupProps;
  final ClearButtonProps? clearButtonProps;
  final TextStyle? dropdownSearchTextStyle;
  final DropdownButtonProps? dropdownButtonProps;

  @override
  Widget build(BuildContext context) {
    return FormBuilderSearchableDropdown<T>(
      autovalidateMode: autovalidateMode,
      enabled: enabled,
      focusNode: focusNode,
      onSaved: onSaved,
      validator: validator,
      decoration: decoration,
      name: name,
      initialValue: initialValue,
      onChanged: onChanged,
      valueTransformer: valueTransformer,
      onReset: onReset,
      asyncItems: asyncItems,
      autoValidateMode: autoValidateMode,
      compareFn: compareFn,
      dropdownBuilder: dropdownBuilder,
      dropdownSearchDecoration: dropdownSearchDecoration,
      dropdownSearchTextAlign: dropdownSearchTextAlign,
      dropdownSearchTextAlignVertical: dropdownSearchTextAlignVertical,
      filterFn: filterFn,
      itemAsString: itemAsString,
      items: items,
      onBeforeChange: onBeforeChange,
      popupOnItemAdded: popupOnItemAdded,
      popupOnItemRemoved: popupOnItemRemoved,
      popupSelectionWidget: popupSelectionWidget,
      selectedItem: selectedItem,
      selectedItems: selectedItems,
      popupProps: popupProps,
      clearButtonProps: clearButtonProps,
      dropdownSearchTextStyle:
          dropdownSearchTextStyle ?? Theme.of(context).textTheme.titleMedium,
      dropdownButtonProps: dropdownButtonProps,
    );
  }
}
