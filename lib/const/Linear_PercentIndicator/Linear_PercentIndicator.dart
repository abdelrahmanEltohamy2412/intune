import 'package:flutter/material.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearPercentIndicatorScreen extends StatelessWidget {
  LinearPercentIndicatorScreen({Key? key, required this.precent})
      : super(key: key);
  double precent;
  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: 350,
      lineHeight: 4,
      percent: precent,
      backgroundColor: MyColor.lightGrey,
      progressColor: MyColor.pink,
    );
  }
}
