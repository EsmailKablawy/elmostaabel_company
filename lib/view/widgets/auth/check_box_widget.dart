import 'package:elmostaabel_company/logic/controllers/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CheckBox extends StatelessWidget {
   CheckBox({super.key});
  final controller=Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Row(children: [
                GetBuilder<AuthController>(builder: (_) {
                  return InkWell(
                  onTap: () {
                    controller.checkBox();
                  },
                  child: Container(
                   width: 20,
                   height: 20,
                   
                   decoration:  BoxDecoration(
                    border:controller.isCheckBox
                     ?const Border()
                     :Border.all(color: Colors.grey),
                    shape: BoxShape.circle
                   ),
                   child:controller.isCheckBox
                   ?Image.asset('assets/images/tick-circle.png',fit: BoxFit.cover,)
                   :Container()
                  ),
                );
                },),
                const SizedBox(width: 8,),
                const Text(
               'تذكرني',
               textAlign: TextAlign.right,
               style: TextStyle(
                color: Color(0xFF4F4F4F),
                fontSize: 14,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w500,),),
              ],);
  }
}