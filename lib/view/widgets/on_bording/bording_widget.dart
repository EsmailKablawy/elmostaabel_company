import 'package:elmostaabel_company/routes/routes.dart';
import 'package:elmostaabel_company/utils/them.dart';
import 'package:elmostaabel_company/view/widgets/on_bording/percent_custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_page_view.dart';




class BordingWidget extends StatefulWidget {
  const BordingWidget({super.key});
  
  @override
  State<BordingWidget> createState() => _BordingWidgetState();
}

class _BordingWidgetState extends State<BordingWidget> {

  PageController? pageController;
  
  
  
  
  @override
  void initState() {
    pageController=PageController(
      initialPage: 0,
      keepPage: true

    )..addListener(() {
      setState(() {
        ;
      });
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    // print(pageController?.page);
    return Stack(children: [
      //bording
          CustomPageView(
           pageController: pageController,
           
           
          ),
          
      // sllider
       Positioned(
         bottom: 100,
         left: 165,
          child:PercentCustomWidget(
            percent:pageController!.hasClients
           ?pageController?.page
           :0.0,
          ),
        
        ),
    
      //skip
      Visibility(
        visible: pageController!.hasClients?(pageController?.page==2?false:true):true,
        child: Positioned(
          top: 50,
          left: 30,
          child: InkWell(
            onTap: () {
              Get.toNamed(Routes.MainAuthScreen);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30)),
              child: const Center(child: Text('تخطى',style: TextStyle(height: 1.5,color: Colors.white,fontSize: 12,fontWeight: FontWeight.w700),),),),
          )),
      ),
      
    
      
      
      //iconButton
      Positioned(
        bottom: 34,
        width: 400,
        
        child: InkWell(
          onTap: () {
            
           if(pageController?.page==2){
              Get.toNamed(Routes.MainAuthScreen);
           }else{
            return null;
           }
            
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration:const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ) ,
            child:const Icon(Icons.arrow_forward,color: mainColor,size: 24,) ,
            ),
        )
        ),

        
    ],);
  }
  
  
}