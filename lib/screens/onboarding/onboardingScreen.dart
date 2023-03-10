import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/signScreens/splash.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:nice_intro/intro_screens.dart';

import '../signScreens/signScreen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

List<IntroScreen> pages = [
  IntroScreen(
    title: 'Search',
    imageAsset: 'lib/assets/images/Group 60.png',
    description: 'Quickly find all your messages',
    headerBgColor: MyColor.lightGreen,
  ),
  IntroScreen(
    title: 'Focused Inbox',
    headerBgColor: Colors.white,
    imageAsset: 'lib/assets/images/Group 60.png',
    description: "We've put your most important, actionable emails here",
  ),
  IntroScreen(
    title: 'Social',
    headerBgColor: Colors.white,
    imageAsset: 'lib/assets/images/Group 60.png',
    description: "Keep talking with your mates",
  ),
];

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    var screens = IntroScreens(
      footerPadding: EdgeInsets.all(1),
      skipText: " ",
      indicatorType: IndicatorType.LINE,
      onDone: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => SignScreen(),
        ),
      ),
      onSkip: () => print('Skipping the intro slides'),
      footerBgColor: MyColor.lightPink,
      activeDotColor: Colors.white,
      footerRadius: 40,
//      indicatorType: IndicatorType.CIRCLE,
      slides: [
        IntroScreen(
          title: 'Search',
          imageAsset: 'lib/assets/images/Group 60.png',
          description: 'Quickly find all your messages',
          headerBgColor: Colors.white,
        ),
        IntroScreen(
          title: 'Focused Inbox',
          headerBgColor: Colors.white,
          imageAsset: 'lib/assets/images/Group 60.png',
          description: "We've put your most important, actionable emails here",
        ),
        IntroScreen(
          title: 'Social',
          headerBgColor: Colors.white,
          imageAsset: 'lib/assets/images/Group 60.png',
          description: "Keep talking with your mates",
        ),
      ],
    );
    return Scaffold(
      backgroundColor: MyColor.lightGreen,
      appBar: AppBar(
        backgroundColor: MyColor.lightGreen,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const SplashScreen()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
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
        elevation: 0,
      ),
      body: screens,
    );
  }
}
