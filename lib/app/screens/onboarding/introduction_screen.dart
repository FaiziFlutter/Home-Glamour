import 'package:flutter/material.dart';
import 'package:home_glamour/app/screens/onboarding/welcome_screen.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/const/text_size.dart';
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
            ? colorScheme(context).primary
            : colorScheme(context).primary.withOpacity(0.5),
        borderRadius: BorderRadius.circular(6.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: appheight(context) * 0.9,
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
          if (currentPage == 2)
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: CustomButton(
                text: 'Next',
                mRight: 8,
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const WelcomeScreen();
                      },
                    ),
                  );
                },
              ),
            ),
        ],
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
        top: appheight(context) * 0.04,
        text: 'Find home services near you',
        color: colorScheme(context).primary,
        fontSize: AppTextSize.headlineMediumFont,
        fontWeight: FontWeight.w600,
        fontFamily: poppins(),
      ),
      CustomText(
        top: appheight(context) * 0.02,
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
        top: appheight(context) * 0.04,
        text: 'Book through the App',
        color: colorScheme(context).primary,
        fontSize: AppTextSize.headlineMediumFont,
        fontWeight: FontWeight.w600,
        fontFamily: poppins(),
      ),
      CustomText(
        top: appheight(context) * 0.02,
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
        top: appheight(context) * 0.04,
        text: 'For both clients and bussiness',
        color: colorScheme(context).primary,
        fontSize: AppTextSize.headlineMediumFont,
        fontWeight: FontWeight.w600,
        fontFamily: poppins(),
      ),
      CustomText(
        top: appheight(context) * 0.02,
        text:
            'Whether you are looking for a service or promoting your home bussiness, we haveoptions for everyone! ',
        fontSize: AppTextSize.bodySmallFont,
        fontWeight: FontWeight.w500,
        fontFamily: poppins(),
      ),
    ],
  );
}
