import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_glamour/const/color_scheme.dart';
import 'package:home_glamour/utils/languages.dart';
import 'package:home_glamour/utils/routes.dart';
import 'package:home_glamour/utils/widget_themes/appbar_theme.dart';
import 'package:home_glamour/utils/widget_themes/bottom_nav_theme.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Glamour',
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      translations: Languages(),
      builder: (context, child) => SafeArea(child: child!),
      initialRoute: AppRoutes.splashscreen,
      getPages: AppRoutes.routes,
      theme: ThemeData(
        bottomNavigationBarTheme: buildBottomNavigationBarTheme(),
        colorScheme: colorSchemeLight,
        appBarTheme: lightAppBarTheme,
        useMaterial3: true,
      ) );

  }
}
