import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/screens/BottomNavigationBar/Home.dart';

import '../../../const/colors/colors.dart';
import 'Patient_Record.dart';

class AllPatientScreen extends StatefulWidget {
  const AllPatientScreen({Key? key}) : super(key: key);

  @override
  State<AllPatientScreen> createState() => _AllPatientScreenState();
}

class _AllPatientScreenState extends State<AllPatientScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () => navigateTo(context, Home()),
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'All Patients',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: SizedBox(
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
                                suffixIcon: const Icon(
                                  Icons.search,
                                  color: MyColor.lightGrey,
                                )),
                          ),
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
                SizedBox(
                  height: 543,
                  child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(
                            thickness: 0,
                          ),
                      itemCount: 10,
                      itemBuilder: (c, int index) {
                        return InkWell(
                          onTap: () {
                            navigateTo(context, PatientRecord());
                          },
                          child: Container(
                            width: 340,
                            height: 115,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(
                                      'lib/assets/images/1)online.png',
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Laila Elwi',
                                          style: GoogleFonts.openSans(
                                            textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Chest patien',
                                          style: GoogleFonts.openSans(
                                            textStyle: const TextStyle(
                                                fontSize: 12,
                                                color: MyColor.gray,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  width: 110,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.file_copy_outlined,
                                          color: MyColor.lightPink,
                                        )),
                                    Text(
                                      '(12)',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 12,
                                            color: MyColor.gray,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
