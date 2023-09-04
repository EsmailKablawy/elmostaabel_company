import 'package:elmostaabel_company/routes/routes.dart';
import 'package:elmostaabel_company/utils/them.dart';
import 'package:elmostaabel_company/view/screens/presentation/on%20Bording/on_bording_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToNextView();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body:Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const Spacer(
            flex: 2,
          ),
          Image.asset('assets/images/logo1.png'),
          Lottie.asset('assets/lottie/loading.json'),
      
        ],),
      )
    );
  }
  void goToNextView(){
    Future.delayed(const Duration(seconds: 4),(){
      Get.to(()=>const OnBordingScreen(),transition: Transition.fade);
    });
  }
}

