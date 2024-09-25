import 'package:flutter/material.dart';
import 'package:home_glamour/app/auth/register/register.dart';
import 'package:home_glamour/const/app_paddings.dart';
import 'package:home_glamour/const/color_scheme.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/const/text_size.dart';
import 'package:home_glamour/utils/widgets/custom_text.dart';
import 'package:home_glamour/utils/widgets/custom_button.dart';

class Side extends StatefulWidget {
  const Side({super.key});

  @override
  State<Side> createState() => _SideState();
}

class _SideState extends State<Side> {
  final _countries = '';
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
            const CustomText(
              text: 'HomeGlam',
              fontWeight: FontWeight.bold,
              fontSize: AppTextSize.titleXLargeFont,
              letterSpacing: 3,
            ),
            const SizedBox(
              height: 1,
            ),
            const CustomText(
              text: 'Select Language',
              fontSize: AppTextSize.titleMediumFont,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                  hintText: 'Select Language',
                  border: InputBorder.none,
                  filled: true,
                  fillColor: colorSchemeLight.secondaryContainer),
              items: const [],
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 1,
            ),
            CustomText(
              text: 'Select Whether you are a business or customer',
              fontFamily: roboto(),
              fontSize: AppTextSize.titleMediumFont,
            ),
            CustomButton(
              text: 'Business/Shop',
              textColor: colorSchemeLight.onSurface,
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              color: colorSchemeLight.secondaryContainer,
              width: appWidth(context),
              height: appheight(context) * 0.08,
            ),
            CustomButton(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Register();
                    },
                  ),
                );
              },
              text: 'Customer',
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
