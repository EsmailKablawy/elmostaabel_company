
import 'package:elmostaabel_company/logic/controllers/auth_controller.dart';
import 'package:elmostaabel_company/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../utils/my_string.dart';
import '../../../utils/them.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/data_text_form_field.dart';
import '../../widgets/auth/profile_picture_widget.dart';
import 'data_container.dart';

class CompleteSignUp extends StatelessWidget {
   CompleteSignUp({super.key});
   final fromkey = GlobalKey<FormState>();
  final controller=Get.find<AuthController>();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController datecontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  

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
                'أكمل ملفك الشخصي',
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
          height: MediaQuery.of(context).size.height / 1.15,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 1),
            child:Form(
                key: fromkey,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Details..
                  Column(children: [
                    //profile Picture
                    Container(
                      width: 115,
                      height: 120,
                      child: Column(
                        children: const [
                          
                          ProfilePictureWidget(),
                          SizedBox(height: 0,),
                          Text(
                            //
                            'إختيار صورة شخصية',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.bold,),),
                      ],),
                    ),
                    const SizedBox(height: 0,),
                    
                    //name
                     Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Text(
            //
            'الاسم الكامل',
            
            style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.w900,),),
            const SizedBox(height: 12,),
            DataTextFormField(
              textInputType:TextInputType.name,
              controller: namecontroller,
              hintText:'أدخل اسمك بالكامل' ,
              obscureText:false ,
              prefixIcon:const Text(''),
              suffix: SizedBox(
                width: 20,
                height: 20,
                child: Image.asset('assets/images/Profile_1.png')),
              validator: (value) {
                          if (value.toString().length <= 2 ||
                              !RegExp(validationName).hasMatch(value)) {
                            return 'Enter Valid Name';
                          } else {
                            return null;
                          }
                        },

            ),
        ]),
    ),
                     const SizedBox(height:10 ,),
                    //email
                     Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Text(
            //
            'البريد الالكتروني',
            
            style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.w900,),),
            const SizedBox(height: 12,),
            DataTextFormField(
              textInputType:TextInputType.emailAddress,
              controller: emailcontroller,
              hintText:'أدخل بريدك الالكتروني' ,
              obscureText:false ,
              prefixIcon:const Text(''),
              suffix: SizedBox(
                width: 20,
                height: 20,
                child: Image.asset('assets/images/email.png')),
              validator: (value) {
                          if (!RegExp(validationEmail).hasMatch(value)) {
                            return 'Invalid email';
                          } else {
                            return null;
                          }
                        },

            ),
        ]),
    ),
                     const SizedBox(height:10 ,),
                    //date
                    Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Text(
            //
            'تاريخ الميلاد',
            
            style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.w900,),),
            const SizedBox(height: 12,),
            DataTextFormField(
              textInputType:TextInputType.datetime,
              controller: datecontroller,
              hintText:'أدخل تاريخ ميلادك' ,
              obscureText:false ,
              prefixIcon:const Text(''),
              suffix: SizedBox(
                width: 20,
                height: 20,
                child: Image.asset('assets/images/Calendar.png')),
              validator: (value) {
                      
                              if (value.toString().isEmpty) {
                                return 'please Enter Your Date';
                              } else {
                                return null;
                              }
                            },

            ),
        ]),
    ),
                    
                     const SizedBox(height:10 ,),
                    //phone number
                    Container(
                      width: double.infinity,
              
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('رقم الهاتف',           
                            style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w900,),),
                        IntlPhoneField(
                          controller:phonecontroller ,
                        decoration: const InputDecoration(
                        filled: true,
                        disabledBorder:OutlineInputBorder(
                          borderSide:BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(8)) 
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                        border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(8))
                        ),),
                        initialCountryCode: 'EG',
                        onChanged: (phone) {
                        
                        },
                    ),
                      ],)
                    )
                    
                        
                  ],),
                   GetBuilder<AuthController>(builder: (_) {
                    return AuthButton(
                    text: 'متابعة',
                    
                     onPressed: (){
                      if (fromkey.currentState!.validate()){
                        String name=namecontroller.text.trim();
                        String email=emailcontroller.text.trim();
                        var date=datecontroller.text.toString();
                        var phone=phonecontroller.text;
                        
                        //photo
                        controller.signUpdata(
                          emailData: email,
                          nameData: name,
                          dateData: date,
                          phoneNumberData: phone,
                          );

                      }
                     },
                    colorstext: Colors.white,
                    background: mainColor);
                   },)
                          ],),
              ),
          ),
        ),
      )
    );
  }
}