// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/auth/data_text_form_field.dart';

class DataContainer extends StatelessWidget {
  const DataContainer({
    Key? key,
    required this.controller,
    required this.title,
    required this.hintText,
    required this.image,
    required this.textInputType,
     required this.vlaidator,
  }) : super(key: key);
   final String title;
   final String hintText;
   final String image;
   final Function vlaidator;
   final TextInputType textInputType;
   final TextEditingController controller;
   
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      width: double.infinity,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            //
            title,
            
            style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.w900,),),
            const SizedBox(height: 12,),
            DataTextFormField(
              textInputType:textInputType,
              controller: controller,
              hintText:hintText ,
              obscureText:false ,
              prefixIcon:const Text(''),
              suffix: SizedBox(
                width: 20,
                height: 20,
                child: Image.asset(image)),
              validator:vlaidator() ,

            ),
        ]),
    );
  }
}
