import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerWIdget extends StatefulWidget {
  const TimerWIdget({super.key});

  @override
  State<TimerWIdget> createState() => _TimerWIdgetState();
}

class _TimerWIdgetState extends State<TimerWIdget> {
  late int timerLeft=30;
  void _startCountDown(){
    timerLeft=30;
    Timer.periodic(const Duration(seconds: 3 ), (timer) { 
      if(timerLeft>=1){
        setState(() {
          timerLeft =timerLeft-1;
        });
      }else{
        timer.cancel();
        
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    
    Timer.periodic(const Duration(seconds: 3 ), (timer) { 
      if(timerLeft>=1){
        setState(() {
          timerLeft =timerLeft-1;
        });
      }else{
        timer.cancel();
        
      }
    });
    return Column(
      children: [
        Container(

          width: 95,
          height: 42,
            decoration: ShapeDecoration(
              color: const Color(0xFFFFF9EB),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
        ),
  ),
  child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(children:[
              const TextSpan(
                text: '0:'
              ),
              TextSpan(
                text:timerLeft.toString()
              ),
              
            ]),
          ),
          const SizedBox(width: 8,),
        Image.asset('assets/images/timer.png')
  ],),
),
const SizedBox(height: 16,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          const Text('لم يصلك كود ؟',
                                 style: TextStyle(
                                 color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w800,),),
                          TextButton(onPressed: (){
                            _startCountDown();
                          },
                           child: const Text('إعادة ارسال',
      
                           style: TextStyle(
                          color:Colors.black,
                            fontSize: 14,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w800,),))
                         ],),
      ],
    );
  }
}