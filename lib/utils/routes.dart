import 'package:get/get.dart';
import 'package:home_glamour/app/auth/forgot_password.dart/forgot_password.dart';
import 'package:home_glamour/app/auth/login/login.dart';
import 'package:home_glamour/app/auth/register/register.dart';
import 'package:home_glamour/app/screens/home_screen/home_screen.dart';
import 'package:home_glamour/app/screens/onboarding/agreement.dart';
import 'package:home_glamour/app/screens/onboarding/introduction_screen.dart';
import 'package:home_glamour/app/screens/onboarding/welcome_screen.dart';

import '../widgets/bottom_navigation_bar.dart';

class AppRoutes {
  static const String introductionScreen = '/introductionScreen';
  static const String welcomeScreen = '/welcomeScreen';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgetPassword = '/forgetPassword';
  static const String agreement = '/agreement';
  static const String homeScreen = '/homescreen';
  static const String bottomBar = '/bottomBar';

  static final routes = [
    GetPage(
        name: AppRoutes.introductionScreen,
        page: () => const IntroductionScreen()),
    GetPage(name: AppRoutes.welcomeScreen, page: () => const WelcomeScreen()),
    GetPage(name: AppRoutes.login, page: () => const Login()),
    GetPage(name: AppRoutes.forgetPassword, page: () => const ForgotPassword()),
    GetPage(name: AppRoutes.register, page: () => const Register()),
    GetPage(name: AppRoutes.agreement, page: () => const Agreement()),
    GetPage(
        name: AppRoutes.bottomBar,
        page: () => const BottomNavigationBarScreens()),
    GetPage(name: AppRoutes.homeScreen, page: () => const HomeScreen()),
  ];
}
