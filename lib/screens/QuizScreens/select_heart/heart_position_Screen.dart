import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intune/const/Linear_PercentIndicator/Linear_PercentIndicator.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/QuizScreens/patient_Gender_Screen.dart';
import 'package:intune/screens/QuizScreens/select_heart/heart_Photo_position_screen.dart';
import 'package:intune/screens/live_detect/live_detect_Screen.dart';
import 'package:intune/screens/signScreens/login/signScreen.dart';

import '../../../const/Fill_button/fill_button_screen.dart';

class HeartPositionScreen extends StatefulWidget {
  const HeartPositionScreen({Key? key}) : super(key: key);

  @override
  State<HeartPositionScreen> createState() => _HeartPositionScreen();
}

class _HeartPositionScreen extends State<HeartPositionScreen> {
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SignScreen()));
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const HeartPhotoScreen()));
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
                          "Heart",
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
                                  "URSB",
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
                          height: 10,
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
                                  "ULSB",
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
                          height: 10,
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
                                value: 2,
                                groupValue: _groupValue,
                                title: const Text(
                                  "LLSB",
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
                          height: 10,
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
                                value: 3,
                                groupValue: _groupValue,
                                title: const Text(
                                  "APEX",
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
                          height: 120,
                        ),
                        Center(
                          child: FillButtonScreen(
                            text: "Next",
                            onpressed: () {
                              navigateTo(context, LiveDetectScreen());
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicatorScreen(precent: 1)
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
