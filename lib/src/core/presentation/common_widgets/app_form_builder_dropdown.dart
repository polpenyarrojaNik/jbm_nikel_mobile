import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppFormBuilderDropdown<T> extends ConsumerWidget {
  const AppFormBuilderDropdown({
    super.key,
    required this.name,
    required this.title,
    required this.initialValue,
    required this.validators,
    required this.items,
  });

  final String title;
  final String name;
  final T? initialValue;
  final String? Function(T?)? validators;
  final List<DropdownMenuItem<T>> items;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FormBuilderDropdown<T>(
      isExpanded: true,
      name: name,
      decoration: InputDecoration(
        labelText: title,
        border: InputBorder.none,
      ),
      initialValue: initialValue,
      items: items,
      validator: validators,
    );
  }
}
