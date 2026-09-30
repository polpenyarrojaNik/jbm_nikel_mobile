import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as legacy_material;
import 'package:google_fonts/google_fonts.dart';
import 'package:material_ui/material_ui.dart';

extension CustomThemeDataExt on ThemeData {
  Color get brandColor => const Color.fromARGB(0, 79, 209, 38);
}

class AppTheme {
  static final _fontFamily = GoogleFonts.montserrat().fontFamily;

  static ThemeData theme(Brightness brightness) {
    return _createTheme(brightness);
  }

  static ThemeData _createTheme(Brightness brightness) {
    final myColorScheme = brightness == Brightness.light
        ? AppColors().lightColorScheme
        : AppColors().darkColorScheme;
    return ThemeData(
      useMaterial3: true,
      colorScheme: myColorScheme,
      fontFamily: _fontFamily,
      typography: Typography.material2021(platform: defaultTargetPlatform),
      inputDecorationTheme: InputDecorationTheme(
        border: const UnderlineInputBorder(),
        filled: true,
        fillColor: myColorScheme.surfaceContainerLow,
      ),
    );
  }

  /// Equivalente legacy del `inputDecorationTheme` de [theme].
  ///
  /// dropdown_search, flutter_typeahead y companiia siguen construyendo con
  /// package:flutter/material.dart, asi que sus campos resuelven el
  /// InputDecorationTheme legacy. MaterialUiCompatibilityBridge solo mapea
  /// colorScheme y textTheme, por lo que sin esto esos campos se pintan con
  /// los defaults de Flutter (sin relleno y con borde underline) y no
  /// coinciden con el fondo del resto de campos del formulario.
  ///
  /// Mantener sincronizado con el `inputDecorationTheme` de [theme].
  static legacy_material.InputDecorationThemeData legacyInputDecorationTheme(
    legacy_material.ColorScheme colorScheme,
  ) {
    return legacy_material.InputDecorationThemeData(
      border: legacy_material.InputBorder.none,
      filled: true,
      fillColor: colorScheme.surfaceContainer,
    );
  }
}

class AppColors {
  static const brandColor = Color(0xFF51d126);
  ColorScheme get lightColorScheme => SeedColorScheme.fromSeeds(
    primary: brandColor,
    primaryKey: brandColor,
    brightness: Brightness.light,
    tones: FlexTones.vivid(Brightness.light),
  );

  ColorScheme get darkColorScheme => SeedColorScheme.fromSeeds(
    primaryContainer: brandColor,
    primaryKey: brandColor,
    brightness: Brightness.dark,
    tones: FlexTones.vivid(Brightness.dark),
  );
}
