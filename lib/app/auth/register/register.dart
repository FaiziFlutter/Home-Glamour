import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:home_glamour/const/app_paddings.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/utils/routes.dart';
import 'package:home_glamour/utils/widget_themes/app_theme.dart';
import 'package:home_glamour/widgets/custom_button.dart';
import '../../../const/text_size.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/custom_txtformfield.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomPadding(
            left: appWidth(context) * 0.1,
            right: appWidth(context) * 0.1,
            child: Column(
              children: [
                const CustomText(
                  text: 'Welcome to',
                  fontSize: AppTextSize.titleMediumFont,
                ),
                CustomText(
                  text: 'HomeGlam',
                  color: AppTheme.light.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: AppTextSize.titleXLargeFont,
                  letterSpacing: 3,
                ),
                CustomText(
                  text: 'Sign up as a customer to buy our services',
                  fontSize: AppTextSize.titleMediumFont,
                  fontFamily: poppins(),
                ),
                const CustomTxtformfield(text: 'Name'),
                const CustomTxtformfield(text: 'Email'),
                const CustomTxtformfield(text: 'Password'),
                const CustomTxtformfield(text: 'Phone Number'),
                CustomButton(
                  mTop: 28,
                  onTap: () {},
                  text: 'Sign Up',
                  color: colorScheme(context).secondary,
                  height: 50,
                  width: double.infinity,
                ),
                const CustomText(text: 'Or'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(
                      text: 'Already have an account? ',
                      right: 0,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.offAndToNamed(AppRoutes.login);
                      },
                      child: CustomText(
                        text: "Log In",
                        color: colorScheme(context).tertiary,
                        left: 0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
