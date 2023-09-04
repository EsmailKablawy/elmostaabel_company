import 'package:elmostaabel_company/routes/routes.dart';
import 'package:elmostaabel_company/utils/them.dart';
import 'package:elmostaabel_company/view/screens/presentation/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'firebase_options.dart';
import 'logic/controllers/them_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Elmostaabel Company',
      debugShowCheckedModeBanner: false,
      theme: themsApp.light,
      darkTheme: themsApp.dark,
      themeMode: ThemController().ThemDataGet,
      initialRoute:AppRoutes.splash ,
      getPages: AppRoutes.routes,
      locale: Get.deviceLocale,
     
    );
  }
}

