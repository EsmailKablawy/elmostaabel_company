import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataTextFormField extends StatelessWidget {
  const DataTextFormField({super.key, required this.controller, required this.obscureText, required this.validator, required this.prefixIcon, required this.suffix, required this.hintText, required this.textInputType});
  final TextEditingController controller;
  final bool obscureText;
  final Function validator;
  final Widget prefixIcon;
  final Widget suffix;
  final String hintText;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
          
      style: const TextStyle(
        color: Colors.black,
      ),
      controller: controller,
      
      obscureText: obscureText,
      cursorColor: Colors.black,
      keyboardType: textInputType,
      validator: (value) => validator(value),
      decoration: InputDecoration(
          
          fillColor: Colors.grey.shade200,
          prefixIcon: prefixIcon,
          suffix: suffix,
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.black45, fontSize: 16, fontWeight: FontWeight.w500),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}