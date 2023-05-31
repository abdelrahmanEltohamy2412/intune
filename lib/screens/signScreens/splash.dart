import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/screens/onboarding/onboardingScreen.dart';
import 'package:intune/screens/signScreens/signScreen.dart';

import '../../network/data_resourses/local/cachehelper.dart';
import '../BottomNavigationBar/Home.dart';
import '../HomeScreen/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int splashtime = 3;
  // duration of splash screen on second

  @override
  void initState() {

    Future.delayed(Duration(seconds: splashtime), () async {
     // String? token = CacheHelper.getKey(key: 'token');
    //  if(token!=null){
        navigateTo(context, SignScreen());
     // }
      //else{
      //  navigateTo(context, SignScreen());
     // }

    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffFEFEFE),
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xffFEFEFE),
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      backgroundColor: Color(0xffFEFEFE),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SvgPicture.asset("lib/assets/images/Group 725.svg")],
          ),
        ),
      ),
    );
  }
}
