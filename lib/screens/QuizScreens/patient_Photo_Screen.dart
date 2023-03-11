import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intune/const/Fill_button/fill_button_screen.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/screens/QuizScreens/patient_Form_Screen.dart';
import 'package:intune/screens/signScreens/signScreen.dart';

import '../../const/Linear_PercentIndicator/Linear_PercentIndicator.dart';

class PatientPhotoScreen extends StatefulWidget {
  const PatientPhotoScreen({Key? key}) : super(key: key);

  @override
  State<PatientPhotoScreen> createState() => _PatientPhotoScreen();
}

class _PatientPhotoScreen extends State<PatientPhotoScreen> {
  ImagePicker picker = ImagePicker();
  File? image;
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
              onPressed: () {
                navigateTo(context, const PatientFormScreen());
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyColor.lightGreen),
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SignScreen()));
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
                        Material(
                          color: Colors.white,
                          child: InkWell(
                            onTap: () => getImage(),
                            child: ClipRRect(
                              child: Center(
                                child: Column(
                                  children: [
                                    image != null
                                        ? CircleAvatar(
                                            radius: 100,
                                            backgroundImage: FileImage(image!),
                                          )
                                        : Image.asset(
                                            'lib/assets/images/ff-removebg-preview.png',
                                            width: 250,
                                            height: 230),
                                    const Text(
                                      "Select Patient Photo",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: "tiltNeon"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Flexible(
                        //     child: image != null
                        //         ? Image.file(image!)
                        //         : Text('no Image')),
                        const SizedBox(
                          height: 170,
                        ),
                        Center(
                            child: FillButtonScreen(
                          text: "Next",
                          onpressed: () {
                            navigateTo(context, const PatientFormScreen());
                          },
                        )),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          child: LinearPercentIndicatorScreen(
                            precent: 0.16666667,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
