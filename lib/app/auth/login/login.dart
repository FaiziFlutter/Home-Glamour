import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_glamour/const/app_paddings.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/utils/routes.dart';
import 'package:home_glamour/widgets/custom_button.dart';

import '../../../const/text_size.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/custom_txtformfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                  color: colorScheme(context).tertiary,
                  fontWeight: FontWeight.bold,
                  fontSize: AppTextSize.titleXLargeFont,
                  letterSpacing: 3,
                ),
                CustomText(
                  text: 'Log In as a customer to buy our services',
                  fontSize: AppTextSize.titleMediumFont,
                  fontFamily: poppins(),
                ),
                const CustomTxtformfield(text: 'Email'),
                const CustomTxtformfield(text: 'Email', ),
                const CustomTxtformfield(text: 'Password'),
                TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.forgetPassword);
                  },
                  child: const CustomText(
                    top: 10,
                    bottom: 10,
                    text: "Forgot Password",
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                CustomButton(
                  color: colorScheme(context).secondary,
                  onTap: () {
                    Get.toNamed(AppRoutes.agreement);
                  },
                  text: 'Log In',
                  height: 50,
                  width: double.infinity,
                ),
                const CustomText(text: 'Or'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(
                      text: "Don't have an account? ",
                      right: 0,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.offAndToNamed(AppRoutes.register);
                      },
                      child:  CustomText(
                        color: colorScheme(context).tertiary,
                        text: "Register",
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
