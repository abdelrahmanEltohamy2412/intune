import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/QuizScreens/patient_Form_Screen.dart';
import 'package:intune/screens/signScreens/signScreen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PatientGenderScreen extends StatefulWidget {
  const PatientGenderScreen({Key? key}) : super(key: key);

  @override
  State<PatientGenderScreen> createState() => _PatientGenderScreen();
}

class _PatientGenderScreen extends State<PatientGenderScreen> {
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SignScreen()));
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
                MaterialPageRoute(builder: (_) => PatientFormScreen()));
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
                      const SizedBox(
                        height: 170,
                      ),
                      RadioListTile(
                        dense: true,
                        tileColor: MyColor.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        value: 0,
                        groupValue: _groupValue,
                        title: Text("Male"),
                        onChanged: (newValue) =>
                            setState(() => _groupValue = newValue!),
                        activeColor: Colors.red,
                        selected: false,
                      ),
                      RadioListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        value: 1,
                        groupValue: _groupValue,
                        tileColor: MyColor.green,
                        title: Text("Female"),
                        onChanged: (newValue) =>
                            setState(() => _groupValue = newValue!),
                        activeColor: Colors.red,
                        selected: false,
                      ),
                      SizedBox(
                        height: 100,
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
                                          const PatientFormScreen()));
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
                      LinearPercentIndicator(
                        width: 320,
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
      ),
    );
  }
}

Widget myRadioButton({String? title, int? value, Function? onChanged}) {
  var groupValue;
  var onChanged;
  return RadioListTile(
    value: value,
    groupValue: groupValue,
    onChanged: onChanged,
    title: Text("$title"),
  );
}
