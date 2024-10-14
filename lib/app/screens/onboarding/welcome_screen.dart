import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_glamour/const/app_paddings.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/const/text_size.dart';
import 'package:home_glamour/utils/routes.dart';
import 'package:home_glamour/widgets/custom_text.dart';
import 'package:home_glamour/widgets/custom_button.dart';

import '../../../const/color_scheme.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final languages = ['English', 'Urdu'];

  void changeLanguage(String language) {
    Locale locale;
    switch (language) {
      case 'English':
        locale = const Locale('en', 'US');
        break;
      case 'Urdu':
        locale = const Locale('ur', 'PK');
        break;

      default:
        locale = const Locale('en', 'US');
    }
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPadding(
        top: 38,
        bottom: 38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/logo.png'),
            CustomText(
              text: 'app_name'.tr,
              fontWeight: FontWeight.bold,
              fontSize: AppTextSize.titleXLargeFont,
              letterSpacing: 3,
            ),
            const SizedBox(
              height: 1,
            ),
            CustomText(
              text: 'select_language'.tr,
              fontSize: AppTextSize.titleMediumFont,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                  hintText: 'select_language'.tr,
                  border: InputBorder.none,
                  filled: true,
                  fillColor: colorSchemeLight.secondaryContainer),
              items: languages.map((String language) {
                return DropdownMenuItem(value: language, child: Text(language));
              }).toList(),
              onChanged: (value) {
                changeLanguage(value!);
              },
            ),
            const SizedBox(
              height: 1,
            ),
            CustomText(
              text: 'select_role'.tr,
              fontFamily: poppins(),
              fontSize: AppTextSize.titleMediumFont,
            ),
            CustomButton(
              text: 'business'.tr,
              textColor: colorSchemeLight.onSurface,
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              color: colorSchemeLight.secondaryContainer,
              width: appWidth(context),
              height: appheight(context) * 0.08,
            ),
            CustomButton(
              onTap: () {
                Get.offNamed(AppRoutes.login);
              },
              text: 'customer'.tr,
              textColor: colorSchemeLight.onSurface,
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              color: colorSchemeLight.secondaryContainer,
              width: appWidth(context),
              height: appheight(context) * 0.08,
            ),
          ],
        ),
      ),
    );
  }
}
