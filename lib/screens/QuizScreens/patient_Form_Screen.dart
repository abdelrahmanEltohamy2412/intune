import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intune/const/TextForm_screen/TextForm_Screen.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/QuizScreens/patient_Gender_Screen.dart';
import 'package:intune/screens/QuizScreens/patient_Photo_Screen.dart';
import 'package:intune/screens/signScreens/signScreen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../const/Fill_button/fill_button_screen.dart';

class PatientFormScreen extends StatefulWidget {
  const PatientFormScreen({Key? key}) : super(key: key);

  @override
  State<PatientFormScreen> createState() => _PatientFormScreen();
}

class _PatientFormScreen extends State<PatientFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignScreen()));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyColor.lightGreen),
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const PatientPhotoScreen()));
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
                  height: 30,
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
                          "Patient Form",
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
                        TextFormFieldScreen(
                            type: TextInputType.name, hint: "Enter your name"),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormFieldScreen(
                            type: TextInputType.phone,
                            hint: "Enter your phone Number"),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormFieldScreen(
                            type: TextInputType.number, hint: "Enter your age"),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormFieldScreen(
                            type: TextInputType.number,
                            hint: "Enter your height"),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormFieldScreen(
                            type: TextInputType.number,
                            hint: "Enter your weight"),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: FillButtonScreen(
                            text: "Next",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => PatientGenderScreen()));
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          width: 350,
                          lineHeight: 4,
                          percent: 0.25,
                          backgroundColor: MyColor.lightGrey,
                          progressColor: MyColor.pink,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
