import 'package:elmostaabel_company/routes/routes.dart';
import 'package:elmostaabel_company/utils/them.dart';
import 'package:elmostaabel_company/view/widgets/auth/auth_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';

import '../../widgets/auth/pin_put_widget.dart';
import '../../widgets/auth/timer_widget.dart';

class ConfirmPhoneScreen extends StatelessWidget {
  const ConfirmPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Image.asset('assets/images/Arrow - Left.png')),
        title: const Text(
                'تأكيد رقم الهاتف',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w900,),),
                centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 1,
          child: Padding(padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 50,
                  ),
                  child: Column(children: [
                    Column(children:   [
                      const Text('لقد قمنا بارسال رمز التأكيد الى الرقم',
                          style: TextStyle(
                          color:Colors.black,
                         fontSize: 16,
                         fontFamily: 'Tajawal',
                         fontWeight: FontWeight.bold,
                          height: 1.73,),),
                      const Text('01288929611',
                          style: TextStyle(
                          color: Color(0xFFFF7029),
                          fontSize: 16,
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.bold,
                          height: 1.73,),),
                          SizedBox(height: 31,),
                         Row(children:  const [
                            Expanded(
                              child: PinPutWidget(),
                            ),
                         ],),
                         const SizedBox(height: 20,),
                         TimerWIdget(),
                         
                         const SizedBox(height: 31,),
                         AuthButton(
                          text: 'متابعة',
                           onPressed: (){
                            Get.toNamed(Routes.ForgetPasswordScreen);
                           },
                            colorstext: Colors.white,
                             background: mainColor),
                         
                    ],),
                  ],),
                   ),
        ),
      ),
    );
  }
}