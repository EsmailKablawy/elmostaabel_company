import 'package:elmostaabel_company/logic/controllers/auth_controller.dart';
import 'package:elmostaabel_company/routes/routes.dart';
import 'package:elmostaabel_company/utils/them.dart';
import 'package:elmostaabel_company/view/widgets/auth/auth_button.dart';
import 'package:elmostaabel_company/view/widgets/auth/auth_text_form_field.dart';
import 'package:elmostaabel_company/view/widgets/auth/social_signin_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/my_string.dart';
import '../../widgets/auth/check_box_widget.dart';

class LogInScreen extends StatelessWidget {
   LogInScreen({super.key});
   final fromkey = GlobalKey<FormState>();
   final controller=Get.find<AuthController>();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
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
        child: Container(
          width: double.infinity,
              height: MediaQuery.of(context).size.height / 1,
              child:  Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 0,
                ),
                child:Form(
                  key: fromkey,
                  child: Column(children: [
                    //title
                    const Text(
                  'تسجيل الدخول\nالى حسابك',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.bold,
                    height: 1.27,
                  ),
                ),
                SizedBox(height: 48,),
                
                              //email
                              AuthTextFormField(
                  controller: emailcontroller,
                   obscureText: false,
                    validator:(value) {
                          if (!RegExp(validationEmail).hasMatch(value)) {
                            return 'Invalid email';
                          } else {
                            return null;
                          }
                        },
                     prefixIcon: Image.asset('assets/images/email.png'),
                      suffix:  const Text(''),
                       hintText: 'البريد الالكتروني'
                       ),
                       const SizedBox(height: 24,),
                              //password
                              GetBuilder<AuthController>(builder: (_) => 
                        AuthTextFormField(
                  controller: passwordcontroller,
                   obscureText: controller.isVisibility?false:true,
                    validator: (value) {
                      
                              if (value.toString().length < 6) {
                                return 'password should be longer or equal to 6 characters';
                              } else {
                                return null;
                              }
                            },
                     prefixIcon:Image.asset('assets/images/Lock.png'),
                      suffix:InkWell(
                        onTap: () {
                          controller.visibility();
                        },
                        child: controller.isVisibility
                      ?Image.asset('assets/images/Show.png')
                      :Image.asset('assets/images/Hide.png'),
                      ),
                       hintText: 'كلمة المرور'
                       )
                        ,),
                       const SizedBox(height: 20,),
                              
                              //checkBox
                               CheckBox(),
                              const SizedBox(height: 20,),
                              //button
                              GetBuilder<AuthController>(builder: (_) {
                                return AuthButton(
                                  //
                                  background: mainColor,
                                  colorstext: Colors.white,
                                  text: 'تسجيل الدخول',
                                  onPressed: (){
                                    if (controller.isCheckBox == false) {
                                        Get.snackbar(
                                          'Check Box',
                                          'Please, Accept terms & conditions',
                                          snackPosition: SnackPosition.BOTTOM,
                                          backgroundColor: Colors.grey.withOpacity(0.3),
                                          colorText: Colors.black);
                                    }else if(fromkey.currentState!.validate()){
                                      String email=emailcontroller.text.trim();
                                      String password=passwordcontroller.text;
                                      controller.logInUsingFirebase(
                                        email: email,
                                        password: password);
                                        controller.isCheckBox=true;
                                     }
                                  }
                   );
                                 
                              },),
                              const SizedBox(height: 20,),
                              //Forget Button
                              TextButton(onPressed: (){
                                if(fromkey.currentState!.validate()){
                                  String email = emailcontroller.text.trim();
                                  String password = passwordcontroller.text;
                                    controller.emaliPassword(
                                      emailData: email,
                                      passwordData: password);
                                  Get.toNamed(Routes.ForgetPasswordFirstScreen);
                                }
                              
                              },
                               child: const Text(
                          'هل نسيت كلمة المرور ؟',
                           style: TextStyle(
                            color: Color(0xFF0D6EFD),
                            fontSize: 14,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.bold,),)),
                
                              const SizedBox(height: 20,),
                              //او 
                
                              Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                        Expanded(
                          
                          child: Divider(color: Colors.black,)),
                        Expanded(child:Text(
                     'أو أكمل باستخدام',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                     color: Colors.black,
                    fontSize: 14,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w500,
                              ),),
                
                        
                        ),
                        Expanded(
                          
                          child: Divider(color: Colors.black,)),
                       ],),
                
                              const SizedBox(height: 20,),
                              //social SignIn
                              GetBuilder<AuthController>(builder: (_) {
                                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const SocialSignIn(maincolor:Colors.black , image: 'assets/images/Apple_logo_black 1.png'),
                  const SizedBox(width: 14,),
                  InkWell(
                    onTap: (){
                      controller.googleSignUpApp();
                    },
                    child: const SocialSignIn(maincolor:Color(0xFFE8F3FF) , image: 'assets/images/icongoogle.png')),
                    const SizedBox(width: 14,),
                  InkWell(
                    onTap:() {
                      controller.faceBookSignUpApp();
                    },
                    child: Image.asset('assets/images/Facebook.png'),
                  ),
                  
                  
                              ],);
                              },),
                
                              const SizedBox(height: 20,),
                              //انشاء حساب 
                              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const Text('لا تمتلك حساب؟',
                        style: TextStyle(
                          color: Color(0xFF828282),
                          fontSize: 14,
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.bold,
                        ),),
                
                        TextButton(onPressed: (){
                          Get.toNamed(Routes.SignUpScreen);
                        }, child: const Text('إنشاء حساب',
                        style: TextStyle(
                          color: Color(0xFF0D6EFD),
                          fontSize: 14,
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.bold,
                        ),
                      ),)
                 
                
                
                
                              ],),
                
                              
                
                  ],),
                ) ,
        )
      ),
    ));
  }
}