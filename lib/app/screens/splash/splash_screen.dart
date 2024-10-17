import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_glamour/const/color_scheme.dart';
import 'package:home_glamour/const/global_var.dart';

import '../../../const/text_size.dart';
import '../../../gen/assets.gen.dart';
import '../../../widgets/custom_text.dart';
import '../onboarding/introduction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              const IntroductionScreen(), // Navigate to the HomeScreen
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: appheight(context),
        width: appWidth(context),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              colorSchemeLight.secondaryContainer,
              colorSchemeLight.background
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.logo.image(),
            CustomText(
              text: 'app_name'.tr,
              fontWeight: bold(),
              fontSize: AppTextSize.titleXLargeFont,
              letterSpacing: 3,
              color: colorSchemeLight.outline,
              fontFamily: poppins(),
            ),
          ],
        ),
      ),
    );
  }
}
