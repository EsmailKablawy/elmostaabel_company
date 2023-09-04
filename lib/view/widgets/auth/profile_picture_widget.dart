
import 'dart:io';

import 'package:elmostaabel_company/logic/controllers/auth_controller.dart';
import 'package:elmostaabel_company/utils/them.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePictureWidget extends StatefulWidget {
  const ProfilePictureWidget({super.key});
  
  @override
  State<ProfilePictureWidget> createState() => ProfilePictureWidgetState();
}

class ProfilePictureWidgetState extends State<ProfilePictureWidget> {
  final controller=Get.find<AuthController>();
  final ImagePicker _picker = ImagePicker();
  File? selectedImage;

  getImage(ImageSource source) async {
    final XFile? image = await _picker.pickImage(source: source);
    if (image != null) {
      selectedImage = File(image.path);
      print('=photo=$selectedImage');
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
   
    return GetBuilder<AuthController>(builder: (_) {
      return InkWell(
      onTap: () {
        
        Get.defaultDialog(
          title: 'اختيار الصوره عن طريق',
          titleStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w900),
          
          middleText: '',
          actions: [
            Container(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  InkWell(
                    onTap: () {
                      getImage(ImageSource.camera);
                      Get.back();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.camera_alt_rounded,size: 40,color: mainColor,),
                        Text('Cammera',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ),
                  
                  InkWell(
                    onTap: () {
                      getImage(ImageSource.gallery);
                      Get.back();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.photo,size: 40,color: mainColor),
                        Text('Gallery',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700))
                      ],
                    ),
                  )
                ],
              ),
            )
          ]
        );
        
      },
      child: Container(
                    width: 80,
                    height: 80,
                    decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.46000000834465027),
                    image:selectedImage!=null
                     ?DecorationImage(image: FileImage(selectedImage!),fit: BoxFit.cover)
                     :const DecorationImage(image: AssetImage('assets/images/Ellipse 675.png',),
                    fit: BoxFit.cover),
                    
                    shape: const OvalBorder(),),
                    child:Stack(children: [
                      Positioned(
                        child:Container(
                          //
                          width: 80,
                          height: 80,
                          decoration: ShapeDecoration(
                          color: Colors.black.withOpacity(0.46000000834465027),
                          shape: const OvalBorder(),),
                          child: Center(
                            child:
                           Image.asset('assets/images/Camera.png')
                           ),)),
                    ],),),
                  
    );  
    },);
  }
}