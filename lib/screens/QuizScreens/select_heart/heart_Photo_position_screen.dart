import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/QuizScreens/patient_Form_Screen.dart';
import 'package:intune/screens/QuizScreens/select_Organ_Screen.dart';
import 'package:intune/screens/QuizScreens/select_heart/heart_position_Screen.dart';
import 'package:intune/screens/signScreens/signScreen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../const/Linear_PercentIndicator/Linear_PercentIndicator.dart';

class HeartPhotoScreen extends StatefulWidget {
  const HeartPhotoScreen({Key? key}) : super(key: key);

  @override
  State<HeartPhotoScreen> createState() => _HeartPhotoScreen();
}

class _HeartPhotoScreen extends State<HeartPhotoScreen> {
  int _groupValue = -1;
  Color mColor = MyColor.green, mColor0 = MyColor.green;
  final isSelected = <bool>[false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            onPressed: () {
              navigateTo(context, HeartPositionScreen());
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(MyColor.lightGreen),
                elevation: MaterialStateProperty.all(0)),
            child: const Text(
              "Skip",
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => SelectOrganScreen()));
          },
        ),
        backgroundColor: MyColor.lightGreen,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: MyColor.lightGreen,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      backgroundColor: MyColor.lightGreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 700,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Heart",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: "TiltNeon",
                            letterSpacing: 1.5),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      SvgPicture.asset(
                        "lib/assets/images/Mask Group 83.svg",
                        width: 350,
                        height: 350,
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Center(
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          const HeartPositionScreen()));
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: MyColor.pink),
                              backgroundColor: MyColor.pink,
                              foregroundColor: MyColor.pink,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "TiltNeon",
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      LinearPercentIndicatorScreen(
                        precent: 0.83333335,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
