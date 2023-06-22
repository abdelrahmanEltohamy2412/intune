import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/QuizScreens/patient_Form_Screen.dart';
import 'package:intune/screens/QuizScreens/patient_Gender_Screen.dart';
import 'package:intune/screens/QuizScreens/select_Organ_Screen.dart';
import 'package:intune/screens/QuizScreens/select_heart/heart_Photo_position_screen.dart';
import 'package:intune/screens/QuizScreens/select_lung/Anterior_View_photo_screen.dart';
import 'package:intune/screens/signScreens/login/signScreen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../const/Linear_PercentIndicator/Linear_PercentIndicator.dart';
import 'Posterior_View_photo_screen.dart';

class LungViewScreen extends StatefulWidget {
  const LungViewScreen({Key? key}) : super(key: key);

  @override
  State<LungViewScreen> createState() => _LungViewScreen();
}

class _LungViewScreen extends State<LungViewScreen> {
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
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => PatientGenderScreen()));
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
                        "Lung",
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
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              side: BorderSide(
                                width: 1,
                                color: MyColor.green,
                              ),
                            ),
                            onPressed: () {
                              navigateTo(context, HeartPhotoScreen());
                            },
                            child: RadioListTile(
                              dense: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                              value: 0,
                              groupValue: _groupValue,
                              title: Text(
                                "Anterior View",
                                style: TextStyle(
                                    fontSize: 18, color: MyColor.dark),
                              ),
                              onChanged: (newValue) =>
                                  setState(() => _groupValue = newValue!),
                              activeColor: MyColor.green,
                              selected: false,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          height: 70,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              side: BorderSide(
                                width: 1,
                                color: MyColor.green,
                              ),
                            ),
                            onPressed: () {
                              navigateTo(context, HeartPhotoScreen());
                            },
                            child: RadioListTile(
                              dense: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                              value: 1,
                              groupValue: _groupValue,
                              title: Text(
                                "Posterior View",
                                style: TextStyle(
                                    fontSize: 18, color: MyColor.dark),
                              ),
                              onChanged: (newValue) =>
                                  setState(() => _groupValue = newValue!),
                              activeColor: MyColor.green,
                              selected: false,
                            ),
                          )),
                      SizedBox(
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
                                  navigateTo(
                                      context, const AnteriorPhotoScreen());
                                } else if (_groupValue == 1) {
                                  navigateTo(context, posteriorPhotoScreen());
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
