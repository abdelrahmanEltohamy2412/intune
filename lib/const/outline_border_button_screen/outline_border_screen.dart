import 'package:flutter/material.dart';
import 'package:intune/const/colors/colors.dart';

class OutlineBorderScreen extends StatelessWidget {
  OutlineBorderScreen({
    Key? key,
    required this.text,
    required this.onpressed,
  }) : super(key: key);
  String text;
  VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      child: OutlinedButton(
        onPressed: onpressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: MyColor.darkGray, width: 1),
          backgroundColor: Colors.white,
          foregroundColor: MyColor.pink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: MyColor.darkGray, fontFamily: "TiltNeon", fontSize: 14),
        ),
      ),
    );
  }
}
