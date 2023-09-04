import 'package:elmostaabel_company/utils/them.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PercentCustomWidget extends StatelessWidget {
   PercentCustomWidget({super.key,required this.percent });
  late  double? percent ;

  @override
  Widget build(BuildContext context) {
    return Container(
  width: 70,
  height: 3,
  child: LinearPercentIndicator(
    
      // lineHeight: 3,
      percent:percent==0
      ?percent=0.3
      :percent!*0.5,
      progressColor: orangeclr,
      backgroundColor: Colors.white,
    )
);
    
    
     
  }
}