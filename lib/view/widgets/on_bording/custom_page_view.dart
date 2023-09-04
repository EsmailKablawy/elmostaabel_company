import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
   CustomPageView({required this.pageController,super.key,});
   PageController?pageController;
   

  @override
  Widget build(BuildContext context) {
    return PageView(
      
      controller:pageController ,
      
      children: [
      //first page
      Column(children: [
        const SizedBox(
          height: 95,
        ),
      //title
      Column(children: [
        //text
        const Text.rich(
    TextSpan(
    children: [
      TextSpan(
        text: 'شركة ',
        style: TextStyle(
          color: Color(0xFF151515),
          fontSize: 24,
          fontFamily: 'Tajawal',
          fontWeight: FontWeight.w700,
        ),
      ),
      TextSpan(
         text: 'المستقبل',
          style: TextStyle(
          color: Color(0xFFFF7029),
          fontSize: 24,
          fontFamily: 'Tajawal',
          fontWeight: FontWeight.w700,
        ),
      ),
        TextSpan(
          text: ' للسياحة',
          style: TextStyle(
          color: Color(0xFF151515),
          fontSize: 24,
          fontFamily: 'Tajawal',
          fontWeight: FontWeight.w700,
          ),
        ),
     ],
    ),
    textAlign: TextAlign.right,
),
  //victor
     Image.asset('assets/images/Vector 2524.png',)
      ],),


      //description
        const SizedBox(
      width: 313,
      height: 83,
     child: Text(
      'مع المستقبل، لديك الفرصة لاكتشاف أكثر الوجهات السياحية إثارة في جميع أنحاء العالم. اختر الوجهة التي تحلم بزيارتها، وسنوفر لك حزم رحلات مخصصة تتناسب مع اهتماماتك وميزانيتك.\n',
      textAlign: TextAlign.center,
      style: TextStyle(
      color: Color(0xFF4F4F4F),
      fontSize: 12,
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w500,
      height: 1.58,
    ),
  ),
),



      //image
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,),
          child: Container(
          width: 343,
          height: 500,
          
          decoration: ShapeDecoration(
            color: const Color(0xFFD9D9D9),
            image: const DecorationImage(image: AssetImage('assets/images/personal1.png')),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
        
            ),
          ),
        
          ),
        ),

    ],),
    
      

    //second view
     Column(children: [
        const SizedBox(
          height: 95,
        ),
      //title
      Column(
       
        children: [
        //text
        const Text.rich(
  TextSpan(
    children: [
      TextSpan(
        text: 'حجز',
        style: TextStyle(
          color: Color(0xFF151515),
          fontSize: 24,
          fontFamily: 'Tajawal',
          fontWeight: FontWeight.w700,
        ),
      ),
      TextSpan(
        text: ' التذاكر',
        style: TextStyle(
          color: Color(0xFFFF7029),
          fontSize: 24,
          fontFamily: 'Tajawal',
          fontWeight: FontWeight.w700,
        ),
      ),
    ],
  ),
  textAlign: TextAlign.right,
),
  //victor
    SizedBox(
          height: 10,
          width: 135,
          // color: Colors.red,
          child: Image.asset('assets/images/Vector 2524.png',alignment: Alignment.bottomLeft,)),
      ],),


      //description
        const SizedBox(
      width: 313,
      height: 83,
  child: Text(
    'نتيح لك حجز تذاكر الطيران بكل يسر وسهولة. قم بتحديد وقت السفر والعودة، واحصل على أفضل العروض والأسعار المناسبة لك.\n',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Color(0xFF4F4F4F),
      fontSize: 12,
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w500,
      height: 1.59,
    ),
  ),
),



      //image
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
          width: 343,
          height: 500,
          decoration: ShapeDecoration(
            color: const Color(0xFFD9D9D9),
            image: const DecorationImage(image: AssetImage('assets/images/personal2.png')),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
        
            ),
          ),
        
          ),
        ),

    ],),


    //final view

    Column(children: [
        const SizedBox(
          height: 95,
        ),
      //title
      Column(
        children: [
        //text
        const Text.rich(
      TextSpan(
       children: [
       TextSpan(
        text: 'تجربة السفر ',
        style: TextStyle(
          color: Color(0xFF151515),
          fontSize: 24,
          fontFamily: 'Tajawal',
          fontWeight: FontWeight.w700,
        ),
      ),
      TextSpan(
        text: 'الفريدة',
        style: TextStyle(
          color: Color(0xFFFF7029),
          fontSize: 24,
          fontFamily: 'Tajawal',
          fontWeight: FontWeight.w700,
        ),
      ),
      
        ],
      ),
      textAlign: TextAlign.center,
      ),
      //victor
         SizedBox(
          height: 10,
          width: 200,
          // color: Colors.red,
          child: Image.asset('assets/images/Vector 2524.png',alignment: Alignment.bottomLeft,)),
      ],),


      //description
        const SizedBox(
      width: 313,
      height: 83,
  child: Text(
    'نتيح لك حجز تذاكر الطيران بكل يسر وسهولة. قم بتحديد وقت السفر والعودة، واحصل على أفضل العروض والأسعار المناسبة لك.\n',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Color(0xFF4F4F4F),
      fontSize: 12,
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w500,
      height: 1.59,
    ),
  ),
),



      //image
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
          width: 343,
          height: 500,
          decoration: ShapeDecoration(
            color: const Color(0xFFD9D9D9),
            image: const DecorationImage(image: AssetImage('assets/images/personal3.png')),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
        
            ),
          ),
        
          ),
        ),

    ],),


    ]
    );
  }
}