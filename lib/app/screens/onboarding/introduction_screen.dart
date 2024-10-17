import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/const/text_size.dart';
import 'package:home_glamour/utils/routes.dart';
import 'package:home_glamour/widgets/custom_text.dart';
import 'package:home_glamour/widgets/custom_button.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  Widget buildIndicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: 8.0,
      width: currentPage == index ? 24 : 14,
      decoration: BoxDecoration(
        color: currentPage == index
            ? colorScheme(context).secondary
            : colorScheme(context).secondary.withOpacity(0.5),
        borderRadius: BorderRadius.circular(6.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: appheight(context) * 0.85,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                children: [
                  firstPage(context),
                  secondPage(context),
                  thirdPage(context),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildIndicator(0),
                buildIndicator(1),
                buildIndicator(2),
              ],
            ),
            SizedBox(
              height: appheight(context) * 0.03,
            ),
            if (currentPage == 2)
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: CustomButton(
                  color: colorScheme(context).tertiary,
                  text: 'Next',
                  mRight: 8,
                  onTap: () {
                    Get.offNamed(AppRoutes.welcomeScreen);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

Widget firstPage(BuildContext context) {
  return Column(
    children: [
      Image.asset(
        'assets/images/img.png',
        fit: BoxFit.cover,
        height: appheight(context) * 0.7,
        width: appWidth(context),
      ),
      CustomText(
        top: 10,
        text: 'Find home services near you',
        color: colorScheme(context).tertiary,
        fontSize: AppTextSize.headlineMediumFont,
        fontWeight: FontWeight.w600,
        fontFamily: poppins(),
      ),
      CustomText(
        text:
            'Choose from a range of services such as makeup, hair, heena and nails! ',
        fontSize: AppTextSize.bodySmallFont,
        fontWeight: FontWeight.w500,
        fontFamily: poppins(),
      ),
    ],
  );
}

Widget secondPage(BuildContext context) {
  return Column(
    children: [
      Image.asset(
        'assets/images/img2.png',
        fit: BoxFit.cover,
        height: appheight(context) * 0.7,
        width: appWidth(context),
      ),
      CustomText(
        top: 10,
        text: 'Book through the App',
        color: colorScheme(context).tertiary,
        fontSize: AppTextSize.headlineMediumFont,
        fontWeight: FontWeight.w600,
        fontFamily: poppins(),
      ),
      CustomText(
        text:
            'Book a time slot for the service you require,make any payments where applicable and you are ready to go!',
        fontSize: AppTextSize.bodySmallFont,
        fontWeight: FontWeight.w500,
        fontFamily: poppins(),
      ),
    ],
  );
}

Widget thirdPage(BuildContext context) {
  return Column(
    children: [
      Image.asset(
        'assets/images/img3.png',
        fit: BoxFit.cover,
        height: appheight(context) * 0.7,
        width: appWidth(context),
      ),
      CustomText(
        top: 10,
        text: 'For both clients and bussiness',
        color: colorScheme(context).tertiary,
        fontSize: AppTextSize.headlineMediumFont,
        fontWeight: FontWeight.w600,
        fontFamily: poppins(),
      ),
      CustomText(
        text:
            'Whether you are looking for a service or promoting your home bussiness, we have options for everyone! ',
        fontSize: AppTextSize.bodySmallFont,
        fontWeight: FontWeight.w500,
        fontFamily: poppins(),
      ),
    ],
  );
}
