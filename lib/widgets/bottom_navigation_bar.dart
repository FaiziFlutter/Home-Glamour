import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_glamour/app/screens/home_screen/home_screen.dart';
import 'package:home_glamour/const/color_scheme.dart';
import 'package:home_glamour/gen/assets.gen.dart';

class BottomNavigationBarScreens extends StatefulWidget {
  const BottomNavigationBarScreens({super.key});

  @override
  State<BottomNavigationBarScreens> createState() =>
      _BottomNavigationBarScreensState();
}

class _BottomNavigationBarScreensState
    extends State<BottomNavigationBarScreens> {
  int activePageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      activePageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = const HomeScreen();

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(color: colorSchemeLight.primary),
          elevation: 0,
          onTap: (value) => _selectPage(value),
          currentIndex: activePageIndex,
          items: [
            BottomNavigationBarItem(
                icon: Assets.icons.icHomeOutlined.svg(), label: 'Home'),
            BottomNavigationBarItem(
                icon: Assets.icons.icCategory.svg(), label: 'Category'),
            BottomNavigationBarItem(
                icon: Assets.icons.icMsgOutlined.svg(), label: 'Chat'),
            BottomNavigationBarItem(
              icon: Assets.icons.icUserOutlined.svg(),
              label: 'Account',
            ),
          ]),
      body: activeScreen,
    );
  }
}
