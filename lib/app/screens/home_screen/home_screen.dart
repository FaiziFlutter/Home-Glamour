import 'package:flutter/material.dart';
import 'package:home_glamour/const/app_paddings.dart';
import 'package:home_glamour/const/text_size.dart';
import 'package:home_glamour/gen/assets.gen.dart';
import 'package:home_glamour/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomText(
                  text: 'Hello, Maria',
                  fontSize: AppTextSize.titleLargeFont,
                ),
                Spacer(),
                Assets.icons.icNotification.svg(),
              ],
            ),
            CustomText(
              text: "Let's Explore categories to find best services for you.",
              textAlign: TextAlign.start,
            ),
            CustomText(
              text: 'Explore Categories',
              fontSize: AppTextSize.titleMediumFont,
            ),
            SizedBox(
              height: 200,
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
