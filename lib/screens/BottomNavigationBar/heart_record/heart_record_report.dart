import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/BottomNavigationBar/heart_record/heart_record.dart';
import 'package:share/share.dart';

import '../../../const/rate_container/rate_container_screen.dart';

class HeartReport extends StatefulWidget {
  const HeartReport({Key? key}) : super(key: key);

  @override
  State<HeartReport> createState() => _HeartReportState();
}

class _HeartReportState extends State<HeartReport> {
  bool isPlaying = false;
  bool isPlaying1 = false;
  bool isPlaying2 = false;
  bool isPlaying3 = false;
  final audioPlayer = AudioPlayer();
  final audioPlayer1 = AudioPlayer();
  final audioPlayer2 = AudioPlayer();
  final audioPlayer3 = AudioPlayer();
  Duration duration = Duration.zero;
  late Source audioUrl;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
        isPlaying1 = state == PlayerState.playing;
        isPlaying2 = state == PlayerState.playing;
        isPlaying3 = state == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer1.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer2.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer3.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 130,
                decoration: const BoxDecoration(
                  color: MyColor.lightGreen,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () => navigateTo(context, const HeartRecord()),
                    ),
                    const SizedBox(
                      width: 85,
                    ),
                    const Text(
                      'Heart Records',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                height: 75,
                decoration: BoxDecoration(
                    color: MyColor.pink,
                    borderRadius: BorderRadius.circular(22)),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Temperature",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        "37.5",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 0.25),
                      ),
                      Image.asset(
                          "lib/assets/images/Icon awesome-temperature-low.png"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "RUSB",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff858891),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "98 BPM ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                    Image.asset("lib/assets/images/heart.png"),
                    const Text(
                      "     murmur detected ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: const Color(0xff858891).withOpacity(0.25),
                thickness: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "LUSB",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff858891),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "98 BPM ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                    Image.asset("lib/assets/images/Combined Shape.png"),
                    const Text(
                      " no murmur detected ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: const Color(0xff858891).withOpacity(0.25),
                thickness: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "LLSB",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff858891),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "98 BPM ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                    Image.asset("lib/assets/images/Combined Shape.png"),
                    const Text(
                      " no murmur detected ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: const Color(0xff858891).withOpacity(0.25),
                thickness: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "APEX",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff858891),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "98 BPM ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                    Image.asset("lib/assets/images/Combined Shape.png"),
                    const Text(
                      " no murmur detected ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 360,
                height: 75,
                decoration: BoxDecoration(
                    color: MyColor.lightGreen,
                    borderRadius: BorderRadius.circular(22)),
                child: Padding(
                  padding: const EdgeInsets.all(19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                          "lib/assets/images/Icon metro-files-empty.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "RUBS",
                            style: TextStyle(
                              fontSize: 15,
                              color: MyColor.dark,
                            ),
                          ),
                          Text(
                            "17 May 12:50 AM",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () async {
                          if (isPlaying) {
                            await audioPlayer.pause();
                          } else {
                            audioUrl = UrlSource(
                                'https://serv100.albumaty.com/dl/mem/mnw3at/albums/aghany-ramdan/Mohamed_Abdelmetlb_-_Ramdan_Gana.mp3');
                            audioPlayer.play(audioUrl);
                          }
                        },
                        icon: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: MyColor.green,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            isPlaying ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 360,
                height: 75,
                decoration: BoxDecoration(
                    color: MyColor.lightGreen,
                    borderRadius: BorderRadius.circular(22)),
                child: Padding(
                  padding: const EdgeInsets.all(19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                          "lib/assets/images/Icon metro-files-empty.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "LUSB",
                            style: TextStyle(
                              fontSize: 15,
                              color: MyColor.dark,
                            ),
                          ),
                          Text(
                            "17 May 12:50 AM",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () async {
                          if (isPlaying1) {
                            await audioPlayer1.pause();
                          } else {
                            audioUrl = UrlSource(
                                'https://serv100.albumaty.com/dl/mem/mnw3at/albums/aghany-ramdan/Mohamed_Abdelmetlb_-_Ramdan_Gana.mp3');
                            audioPlayer.play(audioUrl);
                          }
                        },
                        icon: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: MyColor.green,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            isPlaying ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 360,
                height: 75,
                decoration: BoxDecoration(
                    color: MyColor.lightGreen,
                    borderRadius: BorderRadius.circular(22)),
                child: Padding(
                  padding: const EdgeInsets.all(19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                          "lib/assets/images/Icon metro-files-empty.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "LLSB",
                            style: TextStyle(
                              fontSize: 15,
                              color: MyColor.dark,
                            ),
                          ),
                          Text(
                            "17 May 12:50 AM",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () async {
                          if (isPlaying2) {
                            await audioPlayer2.pause();
                          } else {
                            audioUrl = UrlSource(
                                'https://serv100.albumaty.com/dl/mem/mnw3at/albums/aghany-ramdan/Mohamed_Abdelmetlb_-_Ramdan_Gana.mp3');
                            audioPlayer.play(audioUrl);
                          }
                        },
                        icon: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: MyColor.green,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            isPlaying ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 360,
                height: 75,
                decoration: BoxDecoration(
                    color: MyColor.lightGreen,
                    borderRadius: BorderRadius.circular(22)),
                child: Padding(
                  padding: const EdgeInsets.all(19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                          "lib/assets/images/Icon metro-files-empty.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "APEX",
                            style: TextStyle(
                              fontSize: 15,
                              color: MyColor.dark,
                            ),
                          ),
                          Text(
                            "17 May 12:50 AM",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () async {
                          if (isPlaying3) {
                            await audioPlayer3.pause();
                          } else {
                            audioUrl = UrlSource(
                                'https://serv100.albumaty.com/dl/mem/mnw3at/albums/aghany-ramdan/Mohamed_Abdelmetlb_-_Ramdan_Gana.mp3');
                            audioPlayer.play(audioUrl);
                          }
                        },
                        icon: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: MyColor.green,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            isPlaying ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    const Text(
                      "Heart Rate",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      width: 25,
                      height: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Rest Heart Average",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff2A2AC0)),
                        ),
                        Row(
                          children: [
                            const Text(
                              "61 ",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            const Text(
                              " BPM",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                        const Text(
                          "May 2019-May 2020",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
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
              SizedBox(
                height: 5,
              ),
              Image.asset("lib/assets/images/ratee.jpg"),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => Share.share(
                        'https://www.facebook.com/re.ma.169405',
                        subject: 'Look what I made!'),
                    child: Container(
                      width: 170,
                      height: 70,
                      decoration: BoxDecoration(
                          color: MyColor.pink,
                          borderRadius: BorderRadius.circular(22)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Share",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                  "lib/assets/images/Icon ionic-ios-share-alt.png")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
