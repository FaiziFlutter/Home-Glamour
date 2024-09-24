import 'package:flutter/material.dart';
import 'package:home_glamour/app/screens/on_boarding.dart';
import 'package:home_glamour/const/color_scheme.dart';
import 'package:home_glamour/const/text_size.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Glamour',
      theme: ThemeData(
        colorScheme: colorSchemeLight,
        appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: colorSchemeLight.surface,
            titleTextStyle: const TextStyle(
                fontSize: AppTextSize.titleLargeFont,
                fontWeight: FontWeight.w400),
            actionsIconTheme: IconThemeData(color: colorSchemeLight.onSurface)),
        useMaterial3: true,
      ),
      home: const OnBoarding(),
    );
  }
}
