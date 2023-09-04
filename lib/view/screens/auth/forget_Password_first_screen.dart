import 'package:elmostaabel_company/logic/controllers/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../routes/routes.dart';
import '../../../utils/them.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/choose_widget.dart';

class ForgetPasswordFirstScreen extends StatelessWidget {
   ForgetPasswordFirstScreen({super.key});
  final controller =Get.find<AuthController>();

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
                'إنشاء كلمة المرور الجديدة',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w900,),),
                centerTitle: true,

      ),
      body:Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 1,
        child:GetBuilder<AuthController>(builder: (controller) {
          return  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Column(children: [
              //LockImage
              Container(
                width: 290,
                height: 233,
                decoration: const BoxDecoration(
               image: DecorationImage(
                image: AssetImage('assets/images/Lock_logo.png'),
               fit: BoxFit.cover,),),),
               //description
               const Text(
                          'اختر الطريقة التى تود إعادة تعيين كلمة المرور من خلالها.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          color: Color(0xFF4F4F4F),
                          fontSize: 12,
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w800,),),
                const SizedBox(height: 24,),
                //choose container
                //phone
                 InkWell(
                  onTap: (){
                    if(controller.isChoose!=false){
                      return null;
                    }else{
                      controller.isChoos();
                    }
                    //true
                  },
                   child:  ChooseWidget(
                    textcolor: controller.isChoose
                    ?Colors.white
                    : Colors.black,
                    color:controller.isChoose
                     ?mainColor
                     :Colors.grey.withOpacity(0.3),
                     
                    image: 'assets/images/Chat.png',
                    text: 'عن طريق SMS الى رقم الهاتف',
                    text2:'01288929611' ,
                                 ),
                 ),
                const SizedBox(height: 16,),
                //email
                 InkWell(
                  onTap: () {
                    if(controller.isChoose==false){
                      return null;
                    }else{
                      controller.isChoos();
                    }
                    //false
                  },
                   child: ChooseWidget(
                    textcolor:controller.isChoose
                    ?Colors.black
                    : Colors.white,
                    color: controller.isChoose
                    ? Colors.grey.withOpacity(0.3)
                    :mainColor,
                    image: 'assets/images/Message.png',
                    text:  'عن طريق البريد الالكتروني ',
                    text2:'${controller.email.toString()}',
                                 ),
                 ),
            ],),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: AuthButton(
                text: 'استمرار',
                 onPressed: (){
                  controller.isChoose
                  ?Get.toNamed(Routes.ConfirmPhoneScreen)
                  :controller.resetPasswordEmail();
                 },
                colorstext: Colors.white,
                background: mainColor),
            ),

        ],);
        },)
      )
    );
  }
}