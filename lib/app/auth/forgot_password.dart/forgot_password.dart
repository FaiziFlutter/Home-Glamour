import 'package:flutter/material.dart';
import 'package:home_glamour/const/app_paddings.dart';
import 'package:home_glamour/const/color_scheme.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/const/text_size.dart';
import 'package:home_glamour/widgets/custom_appbar.dart';
import 'package:home_glamour/widgets/custom_text.dart';
import 'package:home_glamour/widgets/otp/otp.dart';

import '../../../widgets/custom_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        text: 'Authentication',
      ),
      body: CustomPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              top: 10,
              text: 'Enter the OTP sent on your phone number.',
              fontSize: AppTextSize.headlineSmallFont,
            ),
            CustomText(
              top: 16,
              bottom: 16,
              text: 'Enter OTP',
              fontWeight: bold(),
              fontSize: AppTextSize.labelLargeFont,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 1; i <= 6; i++) const OTPField(),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            CustomButton(
              width: double.infinity,
              height: 50,
              text: 'Verify',
              color: colorScheme(context).tertiary,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: CustomText(
                    color: colorSchemeLight.tertiary,
                    text: 'Resend Code',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
