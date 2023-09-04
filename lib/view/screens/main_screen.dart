import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:elmostaabel_company/logic/controllers/main_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MainScreen extends StatelessWidget {
   MainScreen({super.key});
  final controller =Get.find<Maincontroller>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() {
        return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          onTap: (index) {
            controller.currentIndex.value = index;
          },

          height: 75.0,
          animationCurve: Curves.easeInOut,
          backgroundColor: Colors.white,
          buttonBackgroundColor:Color(0xFF0D6EFD),
          index: controller.currentIndex.value,
          letIndexChange:(index) => true,
          color:Colors.white ,
          animationDuration: const Duration(milliseconds: 300),
          items:  [
            Image.asset(
              controller.currentIndex.value==0
              ?'assets/images/Home1.png'
              :'assets/images/Home.png',height:50,width: 50, 
              ),
            Image.asset(
              controller.currentIndex.value==1
              ?'assets/images/Heart1.png'
              :'assets/images/Heart.png',height:50,width: 50,),
            Image.asset(
              controller.currentIndex.value==2
              ?'assets/images/Ticket1.png'
              :'assets/images/Ticket.png',height:50,width: 50,),
            Image.asset(
              controller.currentIndex.value==3
              ?'assets/images/Profile1.png' 
              :'assets/images/Profile_1.png',height:50,width: 50,),
        ],
    
         ), 
         body: IndexedStack(
          index: controller.currentIndex.value,
          children: controller.tabs.value
         ),
    
      
    );
      }),
      );
  }
}