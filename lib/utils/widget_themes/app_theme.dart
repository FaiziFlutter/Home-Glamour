import 'package:flutter/material.dart';
import 'package:home_glamour/const/color_scheme.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      colorScheme: colorSchemeLight,
    );
  }

  static ThemeData get dark {
    return ThemeData(
      colorScheme: colorSchemeDark,
    );
  }
}
