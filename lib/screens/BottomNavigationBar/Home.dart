import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/BottomNavigationBar/artices.dart';

import '../live_detect/live_detect_Screen.dart';
import 'allpatient.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child:
      Column(
        children: [
          SizedBox(
            height: 200,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: MyColor.lightGreen,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('lib/assets/images/Group 726.svg'),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 50,
                      width: 350,
                      child:
                      TextField(
                        keyboardType: TextInputType.name,
                        style: const TextStyle(color: MyColor.green),
                        cursorColor: MyColor.green,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(15),
                            focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: MyColor.lightGrey)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: MyColor.lightGrey,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            filled: true,
                            hintStyle: const TextStyle(
                                color: MyColor.lightGrey,
                                fontFamily: "TiltNeon",
                                letterSpacing: 0.5,
                                fontSize: 15),
                            hintText: 'Search records',
                            focusColor: MyColor.lightGrey,
                            suffixIcon: const Icon(
                              Icons.search,
                              color: MyColor.lightGrey,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  navigateTo(context, const Articles());
                },
                child: Container(
                  height: 147,
                  width: 350,
                  decoration: const BoxDecoration(
                      color: MyColor.green,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset('lib/assets/images/Group 475.svg'),
                            SvgPicture.asset('lib/assets/images/Group 476.svg'),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Related Articles about heart',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Short Description',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(onTap: (){
                navigateTo(context, const AllPatientScreen());
              },
                child: Container(
                  height: 75,
                  width: 350,
                  decoration: const BoxDecoration(
                      color: MyColor.lightGreen,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'All Patients',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        SvgPicture.asset('lib/assets/images/articles.svg')
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 75,
                width: 350,
                decoration: const BoxDecoration(
                    color: MyColor.lightPink,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Live detect',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      SvgPicture.asset('lib/assets/images/Path 35.svg')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Last Patients',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 100,
                      decoration: BoxDecoration(
                          color: MyColor.darkBlue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Row(
                          children: [
                            SvgPicture.asset(
                              'lib/assets/images/Group 291.svg',
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(width: 6,),
                            Column(children: [
                              Row(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child:
                                    Column(
                                      children: const [
                                        Text(
                                          '7mada malade',
                                          style: TextStyle(
                                              fontSize: 7, color: Colors.white),
                                        ),
                                        SizedBox(height: 7,),
                                        Text(
                                          'Heart Patient',
                                          style: TextStyle(
                                              fontSize: 7, color: Colors.white),
                                        ),
                                      ],
                                    ),

                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18, left: 25),
                                    child: const Text('(12)',style: TextStyle(fontSize: 10),),
                                  ),
                                ],
                              ),

                              Row(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child:
                                    Column(
                                      children: const [
                                        Text(
                                          'In 5 days',
                                          style: TextStyle(
                                              fontSize: 5, color: Colors.white),
                                        ),
                                        SizedBox(height: 4,),
                                        Text(
                                          '12 May, 12:50 AM',
                                          style: TextStyle(
                                              fontSize: 4, color: Colors.white),
                                        ),
                                      ],
                                    ),

                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18, left: 25),
                                    child: Container(height: 18,width: 18,
                                    decoration: BoxDecoration(
                                      color: MyColor.gray
                                    ),
                                      child: Icon(Icons.chat,size: 15,)
                                  ),
                                  )],
                              ),
                            ],),


                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 100,
                      decoration: BoxDecoration(
                          color: MyColor.darkBlue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Row(
                          children: [
                            SvgPicture.asset(
                              'lib/assets/images/Group 291.svg',
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(width: 6,),
                            Column(children: [
                              Row(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child:
                                    Column(
                                      children: const [
                                        Text(
                                          '7mada malade',
                                          style: TextStyle(
                                              fontSize: 7, color: Colors.white),
                                        ),
                                        SizedBox(height: 7,),
                                        Text(
                                          'Heart Patient',
                                          style: TextStyle(
                                              fontSize: 7, color: Colors.white),
                                        ),
                                      ],
                                    ),

                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18, left: 25),
                                    child: const Text('(12)',style: TextStyle(fontSize: 10),),
                                  ),
                                ],
                              ),

                              Row(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child:
                                    Column(
                                      children: const [
                                        Text(
                                          'In 5 days',
                                          style: TextStyle(
                                              fontSize: 5, color: Colors.white),
                                        ),
                                        SizedBox(height: 4,),
                                        Text(
                                          '12 May, 12:50 AM',
                                          style: TextStyle(
                                              fontSize: 4, color: Colors.white),
                                        ),
                                      ],
                                    ),

                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18, left: 25),
                                    child: Container(height: 18,width: 18,
                                    decoration: BoxDecoration(
                                      color: MyColor.gray
                                    ),
                                      child: Icon(Icons.chat,size: 15,)
                                  ),
                                  )],
                              ),
                            ],),


                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
