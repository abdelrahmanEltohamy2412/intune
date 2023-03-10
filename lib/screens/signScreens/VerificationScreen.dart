import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intune/const/Fill_button/fill_button_screen.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/signScreens/checkEmail.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:intune/screens/signScreens/reset_password_Screen.dart';

import 'verificationFormatScreen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final bool _onEditing = true;
  String? _code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const CheckScreen()));
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
                          "Verification",
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
                          "A 6 - Digit PIN has been sent to your email address, enter it below to continue",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "TiltNeon",
                              color: MyColor.darkGray.withOpacity(0.5)),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const FractionallySizedBox(
                            widthFactor: 1, child: PinputExample()),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                            child: FillButtonScreen(
                          text: "Continue",
                          onpressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ResetScreen()));
                          },
                        )),
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
