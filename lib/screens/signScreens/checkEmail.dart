import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intune/const/Fill_button/fill_button_screen.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/signScreens/VerificationScreen.dart';
import 'package:intune/screens/signScreens/forgetpasswordScreen.dart';

class CheckScreen extends StatelessWidget {
  const CheckScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => ForgetPasswordScreen()));
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
              ),
              SvgPicture.asset('lib/assets/images/Group 291.svg'),
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
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Check your mail",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                fontFamily: "TiltNeon",
                                letterSpacing: 1.5),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "We have sent to you a reset password link on your registered email address",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "TiltNeon",
                                color: MyColor.darkGray.withOpacity(0.5)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                            child: FillButtonScreen(
                          text: "Go to Mail",
                          onpressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => VerificationScreen()));
                          },
                        )),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
