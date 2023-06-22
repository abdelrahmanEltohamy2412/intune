import 'package:flutter/material.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/signScreens/login/signScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardModel {
  String img;
  String text;
  String desc;
  Color? bg;
  late Color? button;

  OnboardModel({
    required this.img,
    required this.text,
    required this.desc,
    this.bg,
    this.button,
  });
}

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _pageController;
  List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      img: 'lib/assets/images/Group 60.png',
      text: "Welcome to intune",
      desc:
          "intune is smart stethoscope combined with 3ECG bands and temperature sensor",
    ),
    OnboardModel(
      img: 'lib/assets/images/Group 61.png',
      text: "The diagnosis become easier",
      desc:
          "intune help you to detect the heart and respiratory system Diseases in easy way",
    ),
    OnboardModel(
      img: 'lib/assets/images/Group 62.png',
      text: "Keep your medical information ",
      desc:
          "Intune enable you to make a medical history to save the results of diagnosi",
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnboardInfo() async {
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.lightGreen,
      appBar: AppBar(
        backgroundColor: MyColor.lightGreen,
        elevation: 0.0,
        leading: const Icon(Icons.arrow_back_outlined),
        actions: [
          TextButton(
            onPressed: () {
              _storeOnboardInfo();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const SignScreen()));
            },
            child: const Text(
              "Skip",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: PageView.builder(
          itemCount: screens.length,
          controller: _pageController,
          physics: const ScrollPhysics(),
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (_, index) {
            return Column(
              children: [
                // Image.asset(screens[index].img),
                Container(
                  color: MyColor.lightGreen,
                  height: 330,
                  width: double.infinity,
                  child: Image.asset(
                    screens[index].img,
                  ),
                ),
                const SizedBox(
                  height: 44,
                ),
                Container(
                  height: 333,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          screens[index].text,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 27.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              color: Colors.black),
                        ),
                        Text(
                          screens[index].desc,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Poppins',
                              color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 10.0,
                              child: ListView.builder(
                                itemCount: screens.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Row(children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 3.0),
                                      width: currentIndex == index ? 24 : 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: currentIndex == index
                                            ? MyColor.dark
                                            : MyColor.OnbColors,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ]);
                                },
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                if (index == screens.length - 1) {
                                  _storeOnboardInfo();
                                  Navigator.pushReplacement(
                                      _,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignScreen()));
                                }

                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.ease,
                                );
                              },
                              child: Container(
                                height: 55,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 10),
                                decoration: BoxDecoration(
                                    color: MyColor.lightPink,
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Text(
                                        "Next",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_sharp,
                                        color: Colors.white,
                                      )
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
