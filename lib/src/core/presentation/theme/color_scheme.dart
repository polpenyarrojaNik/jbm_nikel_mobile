import 'package:flutter/material.dart';

abstract class CustomColors {
  static const seed = Color(0xFF6750A4);

  static final surface2 = Color.alphaBlend(
      lightColorScheme.primary.withOpacity(0.08), lightColorScheme.surface);

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromRGBO(46, 93, 168, 1),
    onPrimary: Color.fromRGBO(255, 255, 255, 1),
    primaryContainer: Color.fromRGBO(214, 226, 255, 1),
    onPrimaryContainer: Color.fromRGBO(10, 26, 66, 1),
    secondary: Color.fromRGBO(201, 188, 159, 1),
    onSecondary: Color.fromRGBO(255, 255, 255, 1),
    secondaryContainer: Color.fromRGBO(218, 226, 249, 1),
    onSecondaryContainer: Color.fromRGBO(19, 28, 44, 1),
    tertiary: Color.fromRGBO(112, 85, 115, 1),
    onTertiary: Color.fromRGBO(255, 255, 255, 1),
    tertiaryContainer: Color.fromRGBO(25, 216, 252, 1),
    onTertiaryContainer: Color.fromRGBO(4, 19, 46, 1),
    error: Color.fromRGBO(186, 27, 27, 1),
    errorContainer: Color.fromRGBO(255, 218, 212, 1),
    onError: Color.fromRGBO(255, 255, 255, 1),
    onErrorContainer: Color.fromRGBO(65, 0, 1, 1),
    background: Color.fromRGBO(253, 251, 255, 1),
    onBackground: Color.fromRGBO(27, 27, 29, 1),
    surface: Color.fromRGBO(253, 251, 255, 1),
    onSurface: Color.fromRGBO(27, 27, 29, 1),
    surfaceVariant: Color.fromRGBO(225, 226, 236, 1),
    onSurfaceVariant: Color.fromRGBO(78, 71, 79, 1),
    outline: Color.fromRGBO(116, 119, 127, 1),
    shadow: Color.fromRGBO(0, 0, 0, 1),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFAEC6FF),
    onPrimary: Color(0xFF002C70),
    primaryContainer: Color(0xFF17438F),
    onPrimaryContainer: Color(0xFFD8E2FF),
    secondary: Color(0xFFF4BF48),
    onSecondary: Color(0xFF402D00),
    secondaryContainer: Color(0xFF5C4200),
    onSecondaryContainer: Color(0xFFFFDE9C),
    tertiary: Color(0xFF4DDADA),
    onTertiary: Color(0xFF003738),
    tertiaryContainer: Color(0xFF004F50),
    onTertiaryContainer: Color(0xFF6EF6F6),
    error: Color(0xFFF2B8B5),
    errorContainer: Color(0xFF8C1D18),
    onError: Color(0xFF601410),
    onErrorContainer: Color(0xFFF9DEDC),
    background: Color(0xFF1C1B1F),
    onBackground: Color(0xFFE6E1E5),
    surface: Color(0xFF1C1B1F),
    onSurface: Color(0xFFE6E1E5),
    surfaceVariant: Color(0xFF49454F),
    onSurfaceVariant: Color(0xFFCAC4D0),
    outline: Color(0xFF938F99),
    onInverseSurface: Color(0xFF1C1B1F),
    inverseSurface: Color(0xFFE6E1E5),
    inversePrimary: Color(0xFF365CA8),
    shadow: Color(0xFF000000),
  );
}
