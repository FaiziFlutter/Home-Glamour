import 'package:flutter/material.dart';
import 'package:home_glamour/const/app_paddings.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/utils/theme/theme.dart';

import '../../../const/text_size.dart';
import '../../../utils/widgets/custom_text.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomPadding(
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
            ],
          ),
        ),
      ),
    );
  }
}
