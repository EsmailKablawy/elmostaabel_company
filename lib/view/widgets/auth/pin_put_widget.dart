import 'package:elmostaabel_company/utils/them.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinPutWidget extends StatelessWidget {
  const PinPutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Pinput(
      length: 5,
      focusedPinTheme: PinTheme(
        height: 65,
        width: 65,
        textStyle: const TextStyle(
          fontSize: 20
        ),
        decoration: BoxDecoration(      
          color: Colors.white,
          border: Border.all(
            color:mainColor ,
            ),
            borderRadius: BorderRadius.circular(12),
        ),),
      defaultPinTheme:PinTheme(
        height: 60,
        width: 55,
        textStyle: const TextStyle(
          fontSize: 20
        ),
        decoration: BoxDecoration(      
          color: Colors.grey.withOpacity(0.1),
          
            borderRadius: BorderRadius.circular(12),
        ),),
    );
  }
}