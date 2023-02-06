// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class ThemeSettings {
  ThemeSettings({
    required this.sourceColor,
    required this.themeMode,
  });

  final Color sourceColor;
  final ThemeMode themeMode;
}

class CustomTheme {
  final ColorScheme? lightDynamic;
  final ColorScheme? darkDynamic;
  final ThemeSettings settings;

  CustomTheme({required this.settings, this.lightDynamic, this.darkDynamic});

  Color blend(Color targetColor) {
    return Color(
        Blend.harmonize(targetColor.value, settings.sourceColor.value));
  }

  Color source(Color? target) {
    Color source = settings.sourceColor;
    if (target != null) {
      source = blend(target);
    }
    return source;
  }

  ColorScheme colors(Brightness brightness, Color? targetColor) {
    final dynamicPrimary = brightness == Brightness.light
        ? lightDynamic?.primary
        : darkDynamic?.primary;
    return ColorScheme.fromSeed(
      seedColor: dynamicPrimary ?? source(targetColor),
      brightness: brightness,
    );
  }

  AppBarTheme appBarTheme(ColorScheme colors) {
    return AppBarTheme(
      elevation: 0,
      // backgroundColor: colors.primary,
      // foregroundColor: colors.onPrimary,
      backgroundColor: colors.surfaceVariant,
      foregroundColor: colors.onSurfaceVariant,
    );
  }

  TabBarTheme tabBarTheme(ColorScheme colors) {
    return TabBarTheme(
      labelColor: colors.secondary,
      unselectedLabelColor: colors.onSurfaceVariant,
      indicator: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: colors.secondary,
            width: 2,
          ),
        ),
      ),
    );
  }

  ShapeBorder get shapeMedium => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      );

  CardTheme cardTheme() {
    return CardTheme(
      elevation: 0,
      shape: shapeMedium,
      clipBehavior: Clip.antiAlias,
    );
  }

  BottomAppBarTheme bottomAppBarTheme(ColorScheme colors) {
    return BottomAppBarTheme(
      color: colors.surface,
      elevation: 0,
    );
  }

  BottomNavigationBarThemeData bottomNavigationBarTheme(ColorScheme colors) {
    return BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: colors.surfaceVariant,
      selectedItemColor: colors.onSurface,
      unselectedItemColor: colors.onSurfaceVariant,
      elevation: 0,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
    );
  }

  DrawerThemeData drawerTheme(ColorScheme colors) {
    return DrawerThemeData(
      backgroundColor: colors.surface,
    );
  }

  ListTileThemeData listTileTheme(ColorScheme colors) {
    return ListTileThemeData(
      shape: shapeMedium,
      selectedColor: colors.secondary,
    );
  }

  ThemeMode themeMode() {
    return settings.themeMode;
  }

  ThemeData light([Color? targetColor]) {
    final _colors = colors(Brightness.light, targetColor);
    return ThemeData.light().copyWith(
      colorScheme: _colors,
      appBarTheme: appBarTheme(_colors),
      cardTheme: cardTheme(),
      listTileTheme: listTileTheme(_colors),
      bottomAppBarTheme: bottomAppBarTheme(_colors),
      bottomNavigationBarTheme: bottomNavigationBarTheme(_colors),
      tabBarTheme: tabBarTheme(_colors),
      drawerTheme: drawerTheme(_colors),
      scaffoldBackgroundColor: _colors.background,
      useMaterial3: true,
      textTheme: GoogleFonts.montserratTextTheme(
        ThemeData.light().textTheme,
      ).copyWith(
          titleSmall: GoogleFonts.montserrat(
                  textStyle: ThemeData.light().textTheme.titleSmall)
              .copyWith(fontWeight: FontWeight.w600)),
    );
  }

  ThemeData dark([Color? targetColor]) {
    final _colors = colors(Brightness.dark, targetColor);
    return ThemeData.dark().copyWith(
      colorScheme: _colors,
      appBarTheme: appBarTheme(_colors),
      cardTheme: cardTheme(),
      listTileTheme: listTileTheme(_colors),
      bottomAppBarTheme: bottomAppBarTheme(_colors),
      bottomNavigationBarTheme: bottomNavigationBarTheme(_colors),
      tabBarTheme: tabBarTheme(_colors),
      drawerTheme: drawerTheme(_colors),
      scaffoldBackgroundColor: _colors.background,
      useMaterial3: true,
      textTheme: GoogleFonts.montserratTextTheme(
        ThemeData.dark().textTheme,
      ).copyWith(
          titleSmall: GoogleFonts.montserrat(
                  textStyle: ThemeData.dark().textTheme.titleSmall)
              .copyWith(fontWeight: FontWeight.w600)),
    );
  }
}
