import 'package:flutter/material.dart';

import '../../const/color_scheme.dart'; // Import your color scheme

// A method that returns your BottomNavigationBarThemeData
BottomNavigationBarThemeData buildBottomNavigationBarTheme() {
  return BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(
      color: colorSchemeLight.primary,
      size: 24,
    ),
    unselectedIconTheme: const IconThemeData(
      color: Colors.grey,
      size: 24,
    ),
    selectedLabelStyle: TextStyle(
      color: colorSchemeLight.primary,
    ),
    unselectedLabelStyle: const TextStyle(
      color: Colors.grey,
    ),
    showUnselectedLabels: true,
    showSelectedLabels: true,
    type: BottomNavigationBarType.fixed,
  );
}
