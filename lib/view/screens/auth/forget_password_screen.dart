import 'package:elmostaabel_company/routes/routes.dart';
import 'package:elmostaabel_company/utils/them.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_text_form_field.dart';
import '../../widgets/auth/check_box_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
   ForgetPasswordScreen({super.key});
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController agreepasswordcontroller = TextEditingController();
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
      body:SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 1.1,
            child:Padding(padding:const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                    
                    children: [
      
                      //Lock Logo
                      Container(
                      width: 118,
                      height: 95,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                         image: DecorationImage(
      
                         image: AssetImage('assets/images/Lock_logo.png'),
                         fit: BoxFit.cover,),),),
                      const SizedBox(height: 16,),
                      Container(
                        width: double.infinity,
                        
                        child: const Text(
                            'قم بإنشاء كلمة مرور جديدة',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                              color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w700,),),
                      ),
                      
                      const SizedBox(height: 12,),
                      //Newpassword
                      AuthTextFormField(
                  controller: passwordcontroller,
                   obscureText: true,
                    validator: (value){},
                     prefixIcon:Image.asset('assets/images/Lock.png'),
                      suffix:  Image.asset('assets/images/Hide.png'),
                       hintText:'أدخل كلمة المرور الجديدة'
                       ),
                       const SizedBox(height: 20,),
                       //Agree password
                       AuthTextFormField(
                  controller: agreepasswordcontroller,
                   obscureText: true,
                    validator: (value){},
                     prefixIcon:Image.asset('assets/images/Lock.png'),
                      suffix:  Image.asset('assets/images/Hide.png'),
                       hintText:'تأكيد كلمة المرور الجديدة'
                       ),
                       const SizedBox(height: 20,),
                  //checkBox
                   CheckBox(),
                  
      
                  ],),
                  // Button
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: AuthButton(
                      background: mainColor,
                      colorstext: Colors.white,
                      text: 'متابعة',
                       onPressed: (){
                        Get.defaultDialog(
                          
      
                          actions:[
                            Container(
                              
                              width: 343,
                              height: 250,
                               decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Container(
                                width: 170,
                                height: 130,
                                child: Image.asset('assets/images/dialog_image.png',fit: BoxFit.cover,)),
                              const Text(
                                     'تم إعادة تعيين كلمة المرور بنجاح',
                                       textAlign: TextAlign.center,
                                       style: TextStyle(
                                        color: Colors.black,
                                         fontSize: 20,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w700,),),
                                        const SizedBox(height: 3,),
                              AuthButton(
                                text: 'استمرار',
                                 onPressed: (){
                                  Get.toNamed(Routes.LogInScreen);
                                 },
                                  colorstext: Colors.white,
                                   background: mainColor
                                   ),
                                   
                            ],),),
                          ],
                           middleText: '',
                          middleTextStyle:const TextStyle(fontSize: 1) ,
      
                          title: '',
                          titleStyle: const TextStyle(fontSize: 1)
                        );
                       }
                       ),
                  ),
                  
      
      
                  ],)) ,
        ),
      )
    );
  }
}