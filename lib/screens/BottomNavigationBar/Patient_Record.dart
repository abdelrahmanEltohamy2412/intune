import 'package:flutter/material.dart';

import '../../const/colors/colors.dart';

class PatientRecord extends StatefulWidget {
  const PatientRecord({Key? key}) : super(key: key);

  @override
  State<PatientRecord> createState() => _PatientRecordState();
}

class _PatientRecordState extends State<PatientRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColor.lightGreen,
      ),
      body:
      Column(
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
              child:  Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                const Text(
                  'Patient Record',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Poppins',
                      color: Colors.white),
                ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                   const  CircleAvatar(radius: 50,backgroundColor: MyColor.gray,),
                    SizedBox(width: 12,),
                    Column(
                      children: const [
                      Text(
                        'Laila Elwi',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                      Text(
                        'Chest patient',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                    ],)
                  ],)
              ],),
            ),
          ),
        ],
      ),
    );
  }
}
