import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const/colors/colors.dart';

class PersonInfoScreen extends StatefulWidget {
  const PersonInfoScreen({Key? key}) : super(key: key);

  @override
  State<PersonInfoScreen> createState() => _PersonInfoScreenState();
}

class _PersonInfoScreenState extends State<PersonInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 266,
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
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 85,
                        width: 85,
                        decoration: BoxDecoration(
                            color: MyColor.gray,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'DR.7amada Helal',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: 'Poppins',
                                color: Colors.black),
                          ),
                          Text(
                            'surgeon',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 19.0,
                                fontFamily: 'Poppins',
                                color: Colors.white),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            child: Column(children: [
              Container(
                height: 70,
                width: 330,
                decoration: BoxDecoration(
                  color: MyColor.lightGrey,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    SvgPicture.asset('lib/assets/images/🎨 Icon Сolor.svg'),
                    const Text(
                      'Edit Account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Poppins',
                          color: Colors.black),
                    ),
                      Icon(Icons.arrow_forward_ios_outlined,color: MyColor.gray)

                  ],),
                ),
              ) ,
              SizedBox(height: 10,),
              Container(
                height: 70,
                width: 330,
                decoration: BoxDecoration(
                  color: MyColor.lightGrey,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.notifications),
                    Text(
                      'Notifications',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Poppins',
                          color: Colors.black),
                    ),
                      Icon(Icons.arrow_forward_ios_outlined,color: MyColor.gray,)

                  ],),
                ),
              ) ,
              SizedBox(height: 10,),
              Container(
                  height: 70,
                  width: 330,
                  decoration: BoxDecoration(
                      color: MyColor.lightGrey,
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('lib/assets/images/emergency.svg'),
                        const Text(
                          'Patients',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Poppins',
                              color: Colors.black),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,color: MyColor.gray)
                      ],
                    ),
                  ),
                ),
              SizedBox(height: 10,),
              Container(
                  height: 70,
                  width: 330,
                  decoration: BoxDecoration(
                      color: MyColor.lightGrey,
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('lib/assets/images/Combined Shape.svg'),
                        const Text(
                          'Saved Articles',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Poppins',
                              color: Colors.black),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,color: MyColor.gray)
                      ],
                    ),
                  ),
                ),
              SizedBox(height: 10,),
              Container(
                  height: 70,
                  width: 330,
                  decoration: BoxDecoration(
                      color: MyColor.lightGrey,
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('lib/assets/images/Icon metro-qrcode.svg'),
                        const Text(
                          'QR Code',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Poppins',
                              color: Colors.black),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,color: MyColor.gray)
                      ],
                    ),
                  ),
                ),
              SizedBox(height: 9.5,),
              Container(
                  height: 70,
                  width: 330,
                  decoration: BoxDecoration(
                      color: MyColor.lightGrey,
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('lib/assets/images/Icon ionic-ios-help.svg'),
                        const Text(
                          'Support',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Poppins',
                              color: Colors.black),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,color: MyColor.gray)
                      ],
                    ),
                  ),
                ),




              ],),
          )
        ],
      ),
    );
  }
}
