import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/BottomNavigationBar/Lung_records/lung_records.dart';

import 'package:share/share.dart';

import '../../../../const/rate_container/rate_container_screen.dart';

class LungReport extends StatefulWidget {
  const LungReport({Key? key}) : super(key: key);

  @override
  State<LungReport> createState() => _LungReportState();
}

class _LungReportState extends State<LungReport> {
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
                      onPressed: () => navigateTo(context, const LungRecord()),
                    ),
                    const SizedBox(
                      width: 85,
                    ),
                    const Text(
                      'Lung Records',
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
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                  "A small number of abnormal auscultation sounds have been detected",
                  style: TextStyle(
                      color: MyColor.lightOrange,
                      fontSize: 15,
                      letterSpacing: 0.75),
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
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Plus rate",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff858891),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "100 BPM ",
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
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Respiratory Rate",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff858891),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "26/min ",
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
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Inspiration/Expiration ratio",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff858891),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "1/2 ",
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
                            "R UPPER LOBE",
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
                            "L UPPER LOBE",
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
                height: 5,
              ),
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
                              const Text(
                                "Share",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              const SizedBox(
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
