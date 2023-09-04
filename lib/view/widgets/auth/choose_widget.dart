import 'package:elmostaabel_company/utils/them.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseWidget extends StatelessWidget {
  const ChooseWidget({super.key, required this.image, required this.text, required this.text2, required this.color, required this.textcolor, });
  final String image;
  final String text;
  final String text2;
  final Color color;
  final Color textcolor;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      child: Container(
      width: 343,
      height: 92,
      decoration: ShapeDecoration(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      ),
      child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 14),
      child: Row(children: [
        //icon
          Container(
            
            width: 64,
            height: 64,
            decoration:  ShapeDecoration(
            color: Colors.white,
            shape: const OvalBorder(),
            image: DecorationImage(image: AssetImage(image)),
          ),
          ),
          const SizedBox(width: 14,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
            Text(
              text,
              //  textAlign: TextAlign.center,
              style:  TextStyle(
               color: textcolor,
               fontSize: 12,
               fontFamily: 'Tajawal',
             fontWeight: FontWeight.w700,),),
             const SizedBox(height: 10,),
             Text(
                text2,
                // textAlign: TextAlign.right,
                style:  TextStyle(
                color: textcolor,
                fontSize: 12,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w700,),),
          ],),
        //description
      ],),
      ),
    ),
    );

  }
}