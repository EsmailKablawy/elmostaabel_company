import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectWidget extends StatelessWidget {
  const SelectWidget({super.key, required this.text, required this.image});
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //icon
          Row(children: [
            Image.asset(image),
            const SizedBox(width: 10,),
          //text
           Text(
            text,
            textAlign: TextAlign.right,
            style: const TextStyle(
            color:Colors.black,
            fontSize: 18,
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.w500,
            height: 0.88,)),
          ],),
          //arrow
          Image.asset('assets/images/Arrow - Left 2.png')
        ],),
    );
  }
}