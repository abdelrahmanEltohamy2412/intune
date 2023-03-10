import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intune/const/Fill_button/fill_button_screen.dart';
import 'package:intune/const/TextForm_screen/TextForm_Screen.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/signScreens/checkEmail.dart';
import 'package:intune/screens/signScreens/signScreen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const SignScreen()));
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
                          "Forgot password",
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
                          "Please enter your registered email address or mobile to reset your password",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "TiltNeon",
                              color: MyColor.darkGray.withOpacity(0.5)),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: 100,
                            child: TextFormFieldScreen(
                              hint: "Enter your E-mail or MobilePhone",
                              type: TextInputType.text,
                            )),
                        Center(
                            child: FillButtonScreen(
                          text: "Recover Password",
                          onpressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const CheckScreen()));
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
