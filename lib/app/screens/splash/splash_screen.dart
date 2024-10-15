
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_glamour/const/constants.dart';
import 'package:home_glamour/const/global_var.dart';

import '../../../gen/assets.gen.dart';
import '../../../widgets/custom_text.dart';
import '../onboarding/introduction_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
     super.initState();
    Timer(const Duration( seconds: 3 ), (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const IntroductionScreen(),  // Navigate to the HomeScreen
        ),
      );
  }
   );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: appheight(context),
        width: appWidth(context),
        decoration: const BoxDecoration(
            gradient:LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(0xffDB9080, 0xffffffff, 0, 0),
                  Color.fromRGBO(0xffDB9080, 0xffffffff, 0, 0)
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.logo.image(),
           CustomText( text: "HomeGlam", top: 15,
              letterSpacing: 6,
             fontWeight: bold,
            fontSize: 22,
             fontFamily: poppins(),
            ),
          ],
        ),
      ),
    );
  }
}

