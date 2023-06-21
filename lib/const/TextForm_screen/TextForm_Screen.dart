import 'package:flutter/material.dart';
import 'package:intune/const/colors/colors.dart';

class TextFormFieldScreen extends StatelessWidget {
  TextFormFieldScreen
      ({Key? key, required this.type, required this.hint, this.validator,  this.controller,}) : super(key: key);
  final TextInputType type;
  final String hint;
  final dynamic validator;
   final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
       validator: validator,
      keyboardType: type,
      style: const TextStyle(color: MyColor.green),
      cursorColor: MyColor.green,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(30),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: MyColor.green)),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: MyColor.darkGray,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          filled: true,
          hintStyle: const TextStyle(
              color: MyColor.darkGray,
              fontFamily: "TiltNeon",
              letterSpacing: 0.5,
              fontSize: 15),
          hintText: hint,
          focusColor: MyColor.darkGray,
          fillColor: Colors.white),
    );
  }
}
