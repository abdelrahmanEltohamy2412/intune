import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intune/const/Fill_button/fill_button_screen.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/QuizScreens/patient_Photo_Screen.dart';
import 'package:intune/screens/signScreens/login/signScreen.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              navigateTo(context, SignScreen());
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Reset password",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              fontFamily: "TiltNeon",
                              letterSpacing: 1.5),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Please enter your new password and confirm the password ",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "TiltNeon",
                              color: MyColor.darkGray.withOpacity(0.5)),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                TextField(
                                  keyboardType: TextInputType.number,
                                  obscureText: true,
                                  obscuringCharacter: "*",
                                  style: const TextStyle(color: MyColor.green),
                                  cursorColor: MyColor.green,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(30),
                                      focusedBorder: const UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: MyColor.green)),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: MyColor.darkGray,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      filled: true,
                                      hintStyle: const TextStyle(
                                          color: MyColor.darkGray,
                                          fontFamily: "TiltNeon",
                                          letterSpacing: 0.5,
                                          fontSize: 15),
                                      hintText: "New Password",
                                      focusColor: MyColor.green,
                                      fillColor: Colors.white),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                TextField(
                                  keyboardType: TextInputType.number,
                                  obscureText: true,
                                  obscuringCharacter: "*",
                                  style: const TextStyle(color: MyColor.green),
                                  cursorColor: MyColor.green,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(30),
                                      focusedBorder: const UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: MyColor.green)),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: MyColor.darkGray,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      filled: true,
                                      hintStyle: const TextStyle(
                                          color: MyColor.darkGray,
                                          fontFamily: "TiltNeon",
                                          letterSpacing: 0.5,
                                          fontSize: 15),
                                      hintText: " Confirm New Password",
                                      focusColor: MyColor.green,
                                      fillColor: Colors.white),
                                ),
                                const SizedBox(
                                  height: 70,
                                ),
                                Center(
                                    child: FillButtonScreen(
                                  text: "Recover Password",
                                  onpressed: () {
                                    navigateTo(context, SignScreen());
                                  },
                                )),
                              ],
                            ),
                          ),
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
