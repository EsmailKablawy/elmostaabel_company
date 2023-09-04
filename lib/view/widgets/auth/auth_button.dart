import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/them.dart';
import '../text_utils.dart';

class AuthButton extends StatelessWidget {
  final Color colorstext;
  final Color background;
  final String text;
  final Function() onPressed;
  const AuthButton({required this.text, required this.onPressed, super.key, required this.colorstext, required this.background});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(360, 50),
          backgroundColor:background,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      onPressed: onPressed,
      child: Text(
  text,
  textAlign: TextAlign.center,
  style:  TextStyle(
    color: colorstext,
    fontSize: 16,
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.w700,
  ),
)

    );
  }
}
