import 'package:flutter/material.dart';

import '../../const/color_scheme.dart';
import '../../const/text_size.dart';

AppBarTheme get lightAppBarTheme => AppBarTheme(
    centerTitle: true,
    backgroundColor: colorSchemeLight.surface,
    titleTextStyle: const TextStyle(
        fontSize: AppTextSize.titleLargeFont, fontWeight: FontWeight.w400),
    actionsIconTheme: IconThemeData(color: colorSchemeLight.onSurface));
