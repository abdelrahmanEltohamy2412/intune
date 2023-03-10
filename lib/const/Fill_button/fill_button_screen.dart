import 'package:flutter/material.dart';
import 'package:intune/const/colors/colors.dart';

class FillButtonScreen extends StatelessWidget {
  FillButtonScreen({Key? key, required this.text, required this.onpressed})
      : super(key: key);
  String? text;
  VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      child: OutlinedButton(
        onPressed: onpressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: MyColor.pink),
          backgroundColor: MyColor.pink,
          foregroundColor: MyColor.pink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          text!,
          style: TextStyle(
              color: Colors.white, fontFamily: "TiltNeon", fontSize: 14),
        ),
      ),
    );
  }
}
