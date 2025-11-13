import 'package:flutter/material.dart';

class AppDecoration {
  static InputDecoration selectQuantityFieldDecoration = const InputDecoration(
    suffixText: 'uni.',
    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
  );

  static InputDecoration loginField(String text) => InputDecoration(
    labelText: text,
    helperText: '',
    helperStyle: const TextStyle(height: 0.7),
    errorStyle: const TextStyle(height: 0.7),
  );

  static InputDecoration defaultFieldDecoration(
    String text, {
    IconButton? suffixButton,
  }) => InputDecoration(
    contentPadding: const EdgeInsets.all(8),
    labelText: text,
    border: const OutlineInputBorder(borderSide: BorderSide()),
    suffixIcon: suffixButton,
  );
  static InputDecoration mailFieldDecoration(String text) =>
      InputDecoration(contentPadding: const EdgeInsets.all(5), labelText: text);

  static BoxDecoration loadingPedidoVentaTile = BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(4),
  );

  static Color primaryColorGrey = const Color.fromARGB(
    255,
    154,
    187,
    214,
  ).withValues(alpha: 0.5);
  static Color errorColorGrey = const Color.fromARGB(
    255,
    237,
    175,
    171,
  ).withValues(alpha: 0.5);

  static BoxDecoration loadingTile = BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(4),
  );

  static BoxDecoration kpiLegend(Color color) =>
      BoxDecoration(color: color, borderRadius: BorderRadius.circular(4));

  static InputDecoration inputDecorationinFilter(
    BuildContext context,
    String hintText,
  ) {
    return InputDecoration(
      alignLabelWithHint: true,
      isCollapsed: true,
      labelText: hintText,
      contentPadding: const EdgeInsets.all(8),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
      ),
    );
  }
}
