import 'package:elmostaabel_company/logic/controllers/auth_controller.dart';
import 'package:elmostaabel_company/routes/routes.dart';
import 'package:elmostaabel_company/utils/them.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/auth/custom_scial_widget.dart';

class MainAuthScreen extends StatelessWidget {
   MainAuthScreen({super.key});
  final fromkey = GlobalKey<FormState>();
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
      ),
      body: SingleChildScrollView(
        child: Column(children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 15,
                ),
                child: Form(
                  key: fromkey,
                  child: Column(children: [
                    //Logo+text
                      const Text(
                           'انضم الى المستقبل الآن',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
         fontFamily: 'Tajawal',
    fontWeight: FontWeight.w700,
  ),
),
        SizedBox(
       width: 85.63,
      height: 89.10,
       child: Image.asset('assets/images/logo2.png'),
      ),
      const SizedBox(height: 61),
            
          
       //google
         GetBuilder<AuthController>(builder: (_) {
           return InkWell(
            onTap: () {
              controller.googleSignUpApp();
            },
             child: const CustomSocialWidget(
                     
                     mainColor:Color(0xFFE8F3FF) ,
                     text: 'اكمل باستخدام جوجل',
                     textcolor: Colors.black,
                     image: 'assets/images/icongoogle.png',
                   ),
           );
         },),
        const SizedBox(height:24 ,),

       //facebook
        GetBuilder<AuthController>(builder: (_) {
          return InkWell(
          onTap: () {
            controller.faceBookSignUpApp();
          },
          child: const CustomSocialWidget(
            mainColor:mainColor ,
            text:'اكمل باستخدام فيسبوك',
            textcolor: Colors.white,
            image: 'assets/images/Facebook_icon_(black) 1.png',
          ),
        );
        },),
        const SizedBox(height:24 ,),
       //apple
        InkWell(
          onTap: () {
            Get.offNamed(Routes.MainScreen);
          },
          child: const CustomSocialWidget(
            
            mainColor:Colors.black,
            text: 'اكمل باستخدام آبل',
            textcolor: Colors.white,
            image: 'assets/images/Apple_logo_black 1.png',
          ),
        ),
        const SizedBox(height:32,),
       //او 
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
        Expanded(
          flex: 3,
          child: Divider(color: Colors.black,)),
        Expanded(child:Text(
                   'أو',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                   color: Color(0xFF8F8996),
                  fontSize: 12,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w500,
              ),),
        
        ),
        Expanded(
          flex: 3,
          child: Divider(color: Colors.black,)),
       ],),
        const SizedBox(height: 32,),
       //login
       InkWell(
      onTap: () {
        Get.toNamed(Routes.LogInScreen);
      },
      child: Container(
       width: 343,
      height: 48,
      decoration: ShapeDecoration(
      color: mainColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      ),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
       Text(
  'الدخول باستخدام كلمة المرور',
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.w700,
  ),
)
     
      ],),
      
    ),
    ),
     const SizedBox(height: 32,),
    
     Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        const Text( 'لا تمتلك حساب؟',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          // fontFamily: 'Tajawal',
          fontWeight: FontWeight.w700,
        ),
        ),
        TextButton(onPressed: (){
          Get.toNamed(Routes.SignUpScreen);
        }, child: const Text('إنشاء حساب',
        style: TextStyle(
          color:mainColor,
          fontSize: 14,
          // fontFamily: 'Tajawal',
          fontWeight: FontWeight.w700,
        ),
        )),
        
      ],
     ),
    

     ],),
    )))

          
        ]),
      )
    );
  }
}