







import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import '../../const/Navigetor/Navigetor.dart';
import '../../data/heart_line_state.dart';
import '../live_detect/live_detect_grey.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  int splashtime = 5;
  // duration of splash screen on second

  @override
  void initState() {
    HeartLineState().heartLine();

    Future.delayed(Duration(seconds: splashtime), () async {
      // String? token = CacheHelper.getKey(key: 'token');
      //  if(token!=null){
      navigateTo(context,  LiveDetectGreyScreen(heartModel:  HeartLineState().heartLineList,));
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

      backgroundColor: Color(0xffFEFEFE),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Lottie.asset('lib/assets/images/146987-circle-animation.json')],
          ),
        ),
      ),
    );
  }
}