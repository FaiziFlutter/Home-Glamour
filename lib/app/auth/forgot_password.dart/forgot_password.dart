import 'package:flutter/material.dart';
import 'package:home_glamour/const/app_paddings.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/const/text_size.dart';
import 'package:home_glamour/widgets/custom_appbar.dart';
import 'package:home_glamour/widgets/custom_text.dart';
import 'package:home_glamour/widgets/otp/otp.dart';

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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 1; i <= 6; i++) const OTPField(),
              ],
            ),
            // const CustomButton(
            //   width: double.infinity,
            //   text: 'Verify',
            // ),
            // TextButton(
            //   onPressed: () {},
            //   child: const CustomText(
            //     text: 'Resend Code',
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
