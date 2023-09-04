import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSocialWidget extends StatelessWidget {
   const CustomSocialWidget({
    required this.mainColor
    ,super.key, required this.text, required this.image, required this.textcolor,});
   final Color mainColor;
   final Color textcolor;
   final String text;
   final String image;
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
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
      children: [
       Text(
      text,
      style:  TextStyle(
        color: textcolor,
        fontSize: 14,
        fontFamily: 'Tajawal',
        fontWeight: FontWeight.w700,
      ),
      ),
      const SizedBox(width: 10,)
    ,  Image.asset(image)
      ],),
      
    ),
    );
  }
}