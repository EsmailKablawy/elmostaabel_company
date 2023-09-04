import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/profile/Profile_widget.dart';
import '../widgets/profile/select_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 1.2,
          child: Column(
            children: [
              //Profile+backGround
              ProfileWidget(),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children:  [
                  //EditProfile
                  InkWell(
                    onTap:() {}, 
                    child: const SelectWidget(
                      text: 'تعديل الملف الشخصي',
                      image: 'assets/images/Profile.png',
                    ),
                  ),
                  const Divider(),
                //interShip
                InkWell(
                  onTap:() {}, 
                  child: const SelectWidget(
                      text: 'الرحلات السابقة',
                      image: 'assets/images/Plane, Trip, International.png',
                    ),
                ),
                  const Divider(),
                //Connect US
                InkWell(
                  onTap:() {}, 
                  child: const SelectWidget(
                      text: 'تواصل معنا',
                      image: 'assets/images/email.png',
                    ),
                ),
                  const Divider(),
                //privecy
                InkWell(
                  onTap:() {}, 
                  child: const SelectWidget(
                      text: 'سياسة الخصوصية',
                      image: 'assets/images/Shield Done.png',
                    ),
                ),
                  const Divider(),
                //setting
                InkWell(
                  onTap:() {}, 
                  child: const SelectWidget(
                      text: 'الإعدادات',
                      image: 'assets/images/Setting.png',
                    ),
                ),
                  const Divider(),
                ],),
              ),
              const SizedBox(height: 5,),
              InkWell(
                
                splashColor: Colors.red.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
                customBorder: const StadiumBorder(),
                onTap: () {
                  
                },
                child: Container(
                  width: 150,
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/Logout.png'),
                      const SizedBox(width: 10,),
                      const Text(
                        'تسجيل الخروج',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                        color: Color(0xFFEB5757),
                        fontSize: 16,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w900,
                        height: 1,),),
                    ],
                  ),
                ),
              ),
          ],),
        ),
      )
    );
  }
}

