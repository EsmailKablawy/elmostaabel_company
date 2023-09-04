import 'package:elmostaabel_company/utils/them.dart';
import 'package:elmostaabel_company/view/widgets/auth/auth_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../logic/controllers/auth_controller.dart';

class ChackBoxCreate extends StatelessWidget {
   ChackBoxCreate({super.key});
  final controller = Get.find<AuthController>();

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
                InkWell(
                  onTap: (){},
                  child: const SizedBox(
                           width: 270,
                           child: Text.rich(
                            TextSpan(
                      children: [
                        TextSpan(
                          text: 'من خلال إنشاء حساب جديد. فإنك توافق على ',
                          style: TextStyle(
                            color: Color(0xFF4F4F4F),
                            fontSize: 12,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'الشروط و الاحكام الخاصة بنا.',
                          style: TextStyle(
                            color: Color(0xFF0D6EFD),
                            fontSize: 12,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                ),
                
              ],);
  }
}