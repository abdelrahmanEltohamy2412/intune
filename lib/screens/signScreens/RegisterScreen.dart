import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intune/const/Fill_button/fill_button_screen.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/const/TextForm_screen/TextForm_Screen.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/network/data_resourses/remote/dio_helper.dart';
import 'package:intune/screens/signScreens/forgetpasswordScreen.dart';
import 'package:intune/screens/signScreens/signScreen.dart';

import '../../models/user_model.dart';
import '../../network/data_resourses/local/cachehelper.dart';
import '../../network/data_resourses/remote/endPoints.dart';
import '../HomeScreen/homescreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState> fromkey= GlobalKey();
  TextEditingController name =TextEditingController();
  TextEditingController Email =TextEditingController();
  TextEditingController Password =TextEditingController();
TextEditingController conPassword =TextEditingController();
Future<void> regsiter () async {
  final data = {
     "name" : name.text,
    "email" : Email.text,
    "password" : Password.text,
    "confirmPassword" : conPassword.text



  };
  UserModel ? user;
  Data ? userdata;

  try{ Response response = await DioHelper.postData(url: register, body: data);
  if(response.statusCode==200){
    user = UserModel.fromJson(response.data);
   // CacheHelper.saveData(key: "token", value: "${userdata!.accessToken}" );
    navigateAndFinished(context, BottomBarScreen());
  }
  else{
    print('Register Error = ${response.data}');
    print('Register Error = ${response.statusMessage}');


  }

  }
  catch(e){
  print('ERRRRORRRRRRRR100000${e.toString()}');
  }


}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            navigateTo(context, SignScreen());
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
          child: Form(
            key: fromkey,
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
                    child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "TiltNeon",
                                  letterSpacing: 1.5),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "Please enter your new password and confirm the password ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "TiltNeon",
                                  color: MyColor.darkGray.withOpacity(0.5)),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                                width: double.infinity,
                                height: 70,
                                child:
                                TextFormFieldScreen(
                                 validator: "${(v){
                                    if(v!.isEmpty){
                                      return
                                        (' name is required');
                                    }
                                    return null ;
                                  }}",
                                  controller: name,
                                  hint: "Enter your name",
                                  type: TextInputType.name,
                                )),
                            const SizedBox(
                              height: 15,
                            ),
                            TextFormFieldScreen(
                                validator: "${(v){
                                  if(v!.isEmpty){
                                    return
                                      (' email is required');
                                  }
                                  return null ;
                                }}",
                                 controller: Email,
                                type: TextInputType.emailAddress,
                                hint: "Enter your E-mail"),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              child: SingleChildScrollView(
                                child: TextFormField(
                                  controller: Password,
                                  validator: (v){
                                    if(v!.isEmpty){
                                      return
                                        (' Password is required');
                                    }
                                    return null ;
                                  },

                                  keyboardType: TextInputType.number,
                                  obscureText: true,
                                  obscuringCharacter: "*",
                                  style: const TextStyle(color: MyColor.green),
                                  cursorColor: MyColor.green,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(30),
                                      focusedBorder: const UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: MyColor.green)),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: MyColor.darkGray,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      filled: true,
                                      hintStyle: const TextStyle(
                                          color: MyColor.darkGray,
                                          fontFamily: "TiltNeon",
                                          letterSpacing: 0.5,
                                          fontSize: 15),
                                      hintText: "Enter your password",
                                      focusColor: MyColor.green,
                                      fillColor: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              child:
                              TextFormField(
                                validator: (v){
                                  if(v!.isEmpty){
                                    return
                                      ('conpassword is required');
                                  }
                                  return null ;
                                },
                                keyboardType: TextInputType.number,
                                obscureText: true,
                                obscuringCharacter: "*",
                                style: const TextStyle(color: MyColor.green),
                                cursorColor: MyColor.green,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(30),
                                    focusedBorder: const UnderlineInputBorder(
                                        borderSide:
                                        BorderSide(color: MyColor.green)),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: MyColor.darkGray,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    filled: true,
                                    hintStyle: const TextStyle(
                                        color: MyColor.darkGray,
                                        fontFamily: "TiltNeon",
                                        letterSpacing: 0.5,
                                        fontSize: 15),
                                    hintText: "Enter your password",
                                    focusColor: MyColor.green,
                                    fillColor: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Center(
                                child: FillButtonScreen(
                              text: "Register",
                              onpressed: () {if(fromkey.currentState!.validate()){
                                regsiter ();
                              }},
                            )),
                            const SizedBox(
                              height: 20,
                            ),
                            const Center(
                              child: Text(
                                "Also can sign in with ",
                                style: TextStyle(
                                    color: MyColor.pink,
                                    fontSize: 14,
                                    fontFamily: "TiltNeon"),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: MyColor.lightPink),
                                  child: IconButton(
                                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                      icon: const FaIcon(
                                        FontAwesomeIcons.facebookF,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        print("Pressed");
                                      }),
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: MyColor.lightPink),
                                  child: IconButton(
                                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                      icon: const FaIcon(
                                        FontAwesomeIcons.google,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        print("Pressed");
                                      }),
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: MyColor.lightPink),
                                  child: IconButton(
                                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                      icon: const FaIcon(
                                        FontAwesomeIcons.apple,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        print("Pressed");
                                      }),
                                ),
                                Material(
                                  color: MyColor.lightPink,
                                  borderRadius: BorderRadius.circular(15),
                                  child: InkWell(
                                    onTap: () {},
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                          'lib/assets/images/Icon simple-huawei.png',
                                          width: 50,
                                          height: 50),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
