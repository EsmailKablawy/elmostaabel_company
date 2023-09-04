import 'package:elmostaabel_company/view/screens/auth/confirm_phone_screen.dart';
import 'package:elmostaabel_company/view/screens/auth/forget_Password_first_screen.dart';
import 'package:elmostaabel_company/view/screens/auth/forget_password_screen.dart';
import 'package:elmostaabel_company/view/screens/auth/log_in_screen.dart';
import 'package:elmostaabel_company/view/screens/auth/main_auth_screen.dart';
import 'package:elmostaabel_company/view/screens/auth/signup_screen.dart';
import 'package:elmostaabel_company/view/screens/main_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../logic/bindigs/auth_binding.dart';
import '../logic/bindigs/main_binding.dart';
import '../view/screens/auth/complete_sign_up.dart';
import '../view/screens/presentation/on Bording/on_bording_screen.dart';
import '../view/screens/presentation/splash/splash_screen.dart';

class AppRoutes{

  //initialRoute
  static const splash=Routes.splashScreen;

  //GetPage
  static final routes=[
    GetPage(name:Routes.splashScreen, page: () => const SplashScreen(),),
    GetPage(name:Routes.onBordingScreen, page: () => const OnBordingScreen(),),
    GetPage(
      name:Routes.MainAuthScreen,
       page: () =>  MainAuthScreen(),
       binding: AuthBinding(),
       ),
    GetPage(
      name:Routes.ForgetPasswordScreen,
       page: () =>  ForgetPasswordScreen(),
       binding: AuthBinding(),
       ),
    GetPage(
      name:Routes.LogInScreen,
       page: () =>  LogInScreen(),
       binding: AuthBinding(),
       ),
    GetPage(
      name:Routes.SignUpScreen,
      page: () =>  SignUpScreen(),
      binding: AuthBinding(),
     ),
    GetPage(
      name:Routes.ForgetPasswordFirstScreen,
       page: () =>  ForgetPasswordFirstScreen(),
       binding: AuthBinding(),
       ),
    GetPage(
      name:Routes.ConfirmPhoneScreen,
       page: () => const ConfirmPhoneScreen(),
       binding: AuthBinding(),
       ),
    GetPage(
      name:Routes.CompleteSignUp,
       page: () =>    CompleteSignUp(),
       binding: AuthBinding(),
       ),
    GetPage(name:Routes.MainScreen, page: () =>  MainScreen(),
    bindings: [
      AuthBinding(),
      MainBinding(),
    ]
    ),
  ];
}

class Routes{
    static const splashScreen='/splashScreen';
    static const onBordingScreen='/onBordingScreen';
    static const MainAuthScreen='/MainAuthScreen';
    static const ForgetPasswordScreen='/ForgetPasswordScreen';
    static const LogInScreen='/LogInScreen';
    static const SignUpScreen='/SignUpScreen';
    static const ForgetPasswordFirstScreen='/ForgetPasswordFirstScreen';
    static const ConfirmPhoneScreen='/ConfirmPhoneScreen';
    static const CompleteSignUp='/CompleteSignUp';
    static const MainScreen='/MainScreen';
  }