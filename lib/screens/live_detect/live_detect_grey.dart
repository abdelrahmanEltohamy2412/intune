import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/BottomNavigationBar/Home.dart';
import 'package:intune/screens/QuizScreens/select_heart/heart_position_Screen.dart';
import 'package:audioplayers/audioplayers.dart';
import '../../const/Navigetor/Navigetor.dart';
import '../../const/rate_container/rate_container_screen.dart';

class LiveDetectGreyScreen extends StatefulWidget {
  const LiveDetectGreyScreen({Key? key}) : super(key: key);

  @override
  State<LiveDetectGreyScreen> createState() => _LiveDetectGreyScreenState();
}

class _LiveDetectGreyScreenState extends State<LiveDetectGreyScreen> {
  bool isPlaying = false;
  final audioPlayer = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  late Source audioUrl;
  String formatIme(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return [if (duration.inHours > 0) hours, minutes, seconds].join(':');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            navigateTo(context, Home());
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
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Live Detect",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: "TiltNeon",
                            letterSpacing: 1.5),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RateContainerScreen(
                            text: "25 mm/s",
                          ),
                          RateContainerScreen(
                            text: "10mm/mV",
                          ),
                          RateContainerScreen(
                            text: "60 Hz filter",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SvgPicture.asset('lib/assets/images/Mask Group 84.svg'),

                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 120,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: MyColor.dark),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        if (isPlaying) {
                                          await audioPlayer.pause();
                                        } else {
                                          audioUrl = UrlSource(
                                              'https://www.soundjay.com/human/heartbeat-01a.mp3');
                                          audioPlayer.play(audioUrl);
                                        }
                                      },
                                      icon: Icon(
                                        isPlaying
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        size: 25,
                                      ),
                                    ),
                                    Text(formatIme(duration - position)),
                                  ],
                                ),
                              )),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffE9E8EE)),
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffE9E8EE),
                            ),
                            child: Center(
                              child: Text(
                                "Save",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                              width: 65,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE9E8EE)),
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffE9E8EE),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                    "lib/assets/images/Group 719.svg"),
                              )),
                        ],
                      )
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



