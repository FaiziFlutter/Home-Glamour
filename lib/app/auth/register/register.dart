import 'package:flutter/material.dart';
import 'package:home_glamour/const/app_paddings.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/utils/theme/theme.dart';
import 'package:home_glamour/utils/widgets/custom_button.dart';

import '../../../const/text_size.dart';
import '../../../utils/widgets/custom_text.dart';
import '../../../utils/widgets/custom_txtformfield.dart';

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
                  fontFamily: mulish(),
                ),
                const CustomTxtformfield(text: 'Name'),
                const CustomTxtformfield(text: 'Email'),
                const CustomTxtformfield(text: 'Password'),
                const CustomTxtformfield(text: 'Phone Number'),
                CustomButton(
                  top: 28,
                  onTap: () {},
                  text: 'Sign Up',
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
                        onPressed: () {},
                        child: const CustomText(
                          text: "Log In",
                          left: 0,
                        ))
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
