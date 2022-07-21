import 'package:flutter/material.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/text_scheme.dart';

import 'color_scheme.dart';

abstract class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: CustomColors.lightColorScheme,
      textTheme: CustomText.lightTextScheme,
      // scaffoldBackgroundColor: CustomColors.lightColorScheme.background,
    );
  }
}
