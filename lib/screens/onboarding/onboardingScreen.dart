import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:nice_intro/intro_screens.dart';

import '../signScreens/signScreen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>  with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    var screens = IntroScreens(skipText: '',containerBg: MyColor.lightGreen,
        onDone: () =>
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignScreen())),
        inactiveDotColor: Colors.white,
        footerBgColor:Colors.white,

        activeDotColor: Colors.black,
        footerRadius: 18.0,textColor: Colors.black,
        slides: [
          IntroScreen(headerBgColor: MyColor.lightGreen,
            title: 'Welcome to intune ',
            description:
            'intune is smart stethoscope combined with 3ECG bands and temperature sensor',
            imageAsset: 'lib/assets/images/Group 60.png',
          ),
          IntroScreen(headerBgColor: MyColor.lightGreen,
            title: 'The diagnosis become easier',
            description:
            'intune help you to detect the heart and respiratory system Diseases in easy way',
            imageAsset: 'lib/assets/images/Group 61.png',
          ),
          IntroScreen(headerBgColor: MyColor.lightGreen,
            title: 'Keep your medical information ',
            description:
            'Intune enable you to make a medical history to save the results of diagnosis'
            ,
            imageAsset: 'lib/assets/images/Group 62.png',
          )
        ]);


    return Scaffold(body:screens

    );
  }
}
