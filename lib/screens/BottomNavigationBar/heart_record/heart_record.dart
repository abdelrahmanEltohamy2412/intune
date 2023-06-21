import 'package:flutter/material.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/BottomNavigationBar/heart_record/heart_record_report.dart';
import 'package:intune/screens/BottomNavigationBar/patient_record/Patient_Record.dart';

import '../../../const/Navigetor/Navigetor.dart';

class HeartRecord extends StatelessWidget {
  const HeartRecord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                    onPressed: () => navigateTo(context, const PatientRecord()),
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
              height: 40,
            ),
            InkWell(
              onTap: () => navigateTo(context, HeartReport()),
              child: Container(
                width: 350,
                height: 75,
                decoration: BoxDecoration(
                    color: MyColor.green,
                    borderRadius: BorderRadius.circular(22)),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Diagnose 1",
                        style: TextStyle(color: MyColor.dark, fontSize: 15),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "12 May,12:50 Am",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            letterSpacing: 0.25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 75,
              decoration: BoxDecoration(
                  color: MyColor.green,
                  borderRadius: BorderRadius.circular(22)),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Diagnose 1",
                      style: TextStyle(color: MyColor.dark, fontSize: 15),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "12 May,12:50 Am",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          letterSpacing: 0.25),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 75,
              decoration: BoxDecoration(
                  color: MyColor.green,
                  borderRadius: BorderRadius.circular(22)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Diagnose 1",
                      style: TextStyle(color: MyColor.dark, fontSize: 15),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "12 May,12:50 Am",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          letterSpacing: 0.25),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
