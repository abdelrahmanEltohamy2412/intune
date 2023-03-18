import 'package:flutter/material.dart';
import 'package:intune/const/colors/colors.dart';

class RateContainerScreen extends StatelessWidget {
  const RateContainerScreen({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(0xff707070))),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 12, color: MyColor.dark),
        ),
      ),
    );
  }
}
