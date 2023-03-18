import 'package:flutter/material.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/screens/BottomNavigationBar/Lung_records/lung_records.dart';
import 'package:intune/screens/BottomNavigationBar/heart_record/heart_record.dart';
import 'package:intune/screens/BottomNavigationBar/patient_record/allpatient.dart';

import '../../../const/colors/colors.dart';

class PatientRecord extends StatefulWidget {
  const PatientRecord({Key? key}) : super(key: key);

  @override
  State<PatientRecord> createState() => _PatientRecordState();
}

class _PatientRecordState extends State<PatientRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColor.lightGreen,
        title: const Center(
          child: Text(
            'Patient Record',
            style: TextStyle(
                fontSize: 22, fontFamily: 'Poppins', color: Colors.white),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () => navigateTo(context, const AllPatientScreen()),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: MyColor.lightGreen,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 65,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('lib/assets/images/Group 60.png'),
                              radius: 60,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                            height: 15,
                          ),
                          Column(
                            children: const [
                              Text(
                                "Laila Elwi",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "Chest Patient",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () => navigateTo(context, HeartRecord()),
              child: Container(
                width: 350,
                height: 80,
                decoration: BoxDecoration(
                    color: MyColor.darkBlue,
                    borderRadius: BorderRadius.circular(22)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Heart Records",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Image.asset("lib/assets/images/heart-rating.png")
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => navigateTo(context, LungRecord()),
              child: Container(
                width: 350,
                height: 80,
                decoration: BoxDecoration(
                    color: MyColor.darkBlue,
                    borderRadius: BorderRadius.circular(22)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Lung Records",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Image.asset("lib/assets/images/lungs.png")
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Patient Info",
                  style: TextStyle(
                    fontSize: 15,
                    color: MyColor.dark,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Hight",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "5' 9' ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Color(0xff858891).withOpacity(0.25),
              thickness: 0.5,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Weight",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "159 LB",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Color(0xff858891).withOpacity(0.25),
              thickness: 0.5,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Gender",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Female",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Color(0xff858891).withOpacity(0.25),
              thickness: 0.5,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Age",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "28",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Color(0xff858891).withOpacity(0.25),
              thickness: 0.5,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Telephone number",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "01067738801",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Color(0xff858891).withOpacity(0.25),
              thickness: 0.5,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Pregnancy status",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "5th",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff858891),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
