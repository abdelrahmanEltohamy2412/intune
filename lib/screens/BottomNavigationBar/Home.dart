import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intune/const/colors/colors.dart';

import '../../const/TextForm_screen/TextForm_Screen.dart';

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
      child: Column(
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
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 50,
                      width: 350,
                      child: TextField(
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
                            suffixIcon: Icon(
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
            children: [
              Container(
                height: 147,
                width: 320,
                decoration: const BoxDecoration(
                    color: MyColor.green,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('lib/assets/images/Group 475.svg'),
                          SvgPicture.asset('lib/assets/images/Group 476.svg'),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Align(alignment: Alignment.topLeft,
                        child: Text(
                          'Related Articles about heart',
                          style: TextStyle(fontSize: 18,),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Align(alignment: Alignment.topLeft,
                        child: Text(
                          'Short Description',
                          style: TextStyle(fontSize: 12,),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(height: 75,width: 320,

                decoration: const BoxDecoration(
                    color: MyColor.lightGreen,
                    borderRadius: BorderRadius.all(Radius.circular(20))),

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text('All Patients',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      SvgPicture.asset('lib/assets/images/articles.svg')
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(height: 75,width: 320,

                decoration: const BoxDecoration(
                    color: MyColor.lightPink,
                    borderRadius: BorderRadius.all(Radius.circular(20))),

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text('Live detect',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      SvgPicture.asset('lib/assets/images/Path 35.svg')
                    ],
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    ));
  }
}
