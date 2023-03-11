import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/QuizScreens/patient_Form_Screen.dart';
import 'package:intune/screens/QuizScreens/select_Organ_Screen.dart';

import '../../const/Linear_PercentIndicator/Linear_PercentIndicator.dart';

class PatientGenderScreen extends StatefulWidget {
  const PatientGenderScreen({Key? key}) : super(key: key);

  @override
  State<PatientGenderScreen> createState() => _PatientGenderScreen();
}

class _PatientGenderScreen extends State<PatientGenderScreen> {
  int _groupValue = -1;
  Color mColor = MyColor.green, mColor0 = MyColor.green;
  final isSelected = <bool>[false, false];
  final List<String> items = [
    'Yes',
    'No',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            onPressed: () {
              navigateTo(context, const SelectOrganScreen());
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(MyColor.lightGreen),
                elevation: MaterialStateProperty.all(0)),
            child: const Text(
              "Skip",
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            navigateTo(context, PatientFormScreen());
          },
        ),
        backgroundColor: MyColor.lightGreen,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: MyColor.lightGreen,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      backgroundColor: MyColor.lightGreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 700,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Patient Form",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: "TiltNeon",
                            letterSpacing: 1.5),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                          height: 70,
                          decoration: BoxDecoration(
                              border: Border.all(color: MyColor.green),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: RadioListTile(
                              dense: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                              value: 0,
                              groupValue: _groupValue,
                              title: const Text(
                                "Male",
                                style: TextStyle(
                                    fontSize: 18, color: MyColor.dark),
                              ),
                              onChanged: (newValue) =>
                                  setState(() => _groupValue = newValue!),
                              activeColor: MyColor.green,
                              selected: false,
                            ),
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                          height: 70,
                          decoration: BoxDecoration(
                              border: Border.all(color: MyColor.green),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: RadioListTile(
                              dense: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                              value: 1,
                              groupValue: _groupValue,
                              title: const Text(
                                "Female",
                                style: TextStyle(
                                    fontSize: 18, color: MyColor.dark),
                              ),
                              onChanged: (newValue) =>
                                  setState(() => _groupValue = newValue!),
                              activeColor: MyColor.green,
                              selected: false,
                            ),
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Define your condition, please. This information is needed for your doctors.",
                        style: TextStyle(
                            fontSize: 13,
                            color: MyColor.green.withOpacity(0.5)),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            hint: Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    'Pregnancy Status',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: MyColor.darkBlue,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            items: items
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: MyColor.dark,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value as String;
                              });
                            },
                            buttonStyleData: ButtonStyleData(
                              height: 50,
                              width: 350,
                              padding:
                                  const EdgeInsets.only(left: 14, right: 14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                  color: MyColor.green,
                                ),
                                color: Colors.white,
                              ),
                              elevation: 2,
                            ),
                            iconStyleData: const IconStyleData(
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                size: 20,
                              ),
                              iconSize: 14,
                              iconEnabledColor: MyColor.green,
                              iconDisabledColor: MyColor.darkGray,
                            ),
                            dropdownStyleData: DropdownStyleData(
                              maxHeight: 200,
                              width: 200,
                              padding: null,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.white),
                              elevation: 8,
                              offset: const Offset(-5, 0),
                              scrollbarTheme: ScrollbarThemeData(
                                radius: const Radius.circular(40),
                                thickness: MaterialStateProperty.all<double>(6),
                                thumbVisibility:
                                    MaterialStateProperty.all<bool>(true),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 40,
                              padding: EdgeInsets.only(left: 14, right: 14),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 115,
                      ),
                      Center(
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          child: OutlinedButton(
                            onPressed: () {
                              navigateTo(context, const SelectOrganScreen());
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: MyColor.pink),
                              backgroundColor: MyColor.pink,
                              foregroundColor: MyColor.pink,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "TiltNeon",
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      LinearPercentIndicatorScreen(
                        precent: 0.50000001,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
