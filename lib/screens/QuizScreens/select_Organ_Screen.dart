import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/QuizScreens/patient_Form_Screen.dart';
import 'package:intune/screens/QuizScreens/patient_Gender_Screen.dart';
import 'package:intune/screens/QuizScreens/select_heart/heart_Photo_position_screen.dart';
import 'package:intune/screens/QuizScreens/select_lung/lung_view_screen.dart';
import 'package:intune/screens/signScreens/signScreen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../const/Linear_PercentIndicator/Linear_PercentIndicator.dart';

class SelectOrganScreen extends StatefulWidget {
  const SelectOrganScreen({Key? key}) : super(key: key);

  @override
  State<SelectOrganScreen> createState() => _SelectOrganScreen();
}

class _SelectOrganScreen extends State<SelectOrganScreen> {
  int _groupValue = -1;
  Color mColor = MyColor.green, mColor0 = MyColor.green;
  final isSelected = <bool>[false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            navigateTo(context, PatientGenderScreen());
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
                        height: 20,
                      ),
                      const Text(
                        "Select Organ",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: "TiltNeon",
                            letterSpacing: 1.5),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                          height: 70,
                          decoration: BoxDecoration(
                              border: Border.all(color: MyColor.green),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: RadioListTile(
                              dense: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                              value: 0,
                              groupValue: _groupValue,
                              title: const Text(
                                "Heart",
                                style: TextStyle(
                                    fontSize: 18, color: MyColor.dark),
                              ),
                              onChanged: (newValue) =>
                                  setState(() => _groupValue = newValue!),
                              activeColor: MyColor.green,
                              selected: false,
                            ),
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                          height: 70,
                          decoration: BoxDecoration(
                              border: Border.all(color: MyColor.green),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: RadioListTile(
                              dense: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                              value: 1,
                              groupValue: _groupValue,
                              title: const Text(
                                "Lung",
                                style: TextStyle(
                                    fontSize: 18, color: MyColor.dark),
                              ),
                              onChanged: (newValue) =>
                                  setState(() => _groupValue = newValue!),
                              activeColor: MyColor.green,
                              selected: false,
                            ),
                          )),
                      const SizedBox(
                        height: 280,
                      ),
                      Center(
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                if (_groupValue == 0) {
                                  navigateTo(context, const HeartPhotoScreen());
                                } else if (_groupValue == 1) {
                                  navigateTo(context, const LungViewScreen());
                                }
                              });
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
                        precent: 0.5,
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
