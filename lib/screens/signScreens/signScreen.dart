import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intune/const/Navigetor/Navigetor.dart';
import 'package:intune/const/TextForm_screen/TextForm_Screen.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:intune/models/Login_model.dart';
import 'package:intune/screens/HomeScreen/homescreen.dart';
import 'package:intune/screens/signScreens/RegisterScreen.dart';
import 'package:intune/screens/signScreens/forgetpasswordScreen.dart';

import '../../const/Fill_button/fill_button_screen.dart';
import '../../const/outline_border_button_screen/outline_border_screen.dart';
import '../../models/user_modelReg.dart';
import '../../network/data_resourses/local/cachehelper.dart';
import '../../network/data_resourses/remote/dio_helper.dart';
import '../../network/data_resourses/remote/endPoints.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({Key? key}) : super(key: key);

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  GlobalKey<FormState> fromkey= GlobalKey();

  TextEditingController Email =TextEditingController();
  TextEditingController Password =TextEditingController();

  Future<void> login () async {
    final data = {

      "email" : Email.text,
      "password" : Password.text,




    };
    LoginModel ? user;
    DataLog ? userdata;

    try{ Response response = await DioHelper.postData(url: signIn,body: data );
    if(response.statusCode==200){
      user = LoginModel.fromJson(response.data);
       CacheHelper.saveData(key: "token", value: "${userdata!.accessToken}" );
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
        automaticallyImplyLeading: false,
        backgroundColor: MyColor.lightGreen,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: MyColor.lightGreen,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      backgroundColor: MyColor.lightGreen,
      body: SafeArea(
        child: Form(
          key: fromkey,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Welcome",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              fontFamily: "TiltNeon",
                              letterSpacing: 1.5),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "sign to continue",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "TiltNeon",
                              color: MyColor.darkGray.withOpacity(0.5)),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                            width: double.infinity,
                            height: 70,
                            child: TextFormFieldScreen(
                              validator: (v) {
                                if (v!.isEmpty) {
                                  return (' Email is required');
                                }
                                return null;
                              },
                              controller: Email,
                              type: TextInputType.emailAddress,
                              hint: "Enter your E-Mail",
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextFormField(

                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return (' Password is required');
                                    }
                                    return null;
                                  },
                                  controller: Password,
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
                                TextButton(
                                  onPressed: () {
                                    navigateTo(context, ForgetPasswordScreen());
                                  },
                                  child: const Text(
                                    "Forget password?",
                                    style: TextStyle(
                                        color: MyColor.darkGray,
                                        fontFamily: "TiltNeon",
                                        letterSpacing: 0.25),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: FillButtonScreen(
                            text: 'Sign In',
                            onpressed:
                                () {if(fromkey.currentState!.validate()){

                               login();
                            }},
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: OutlineBorderScreen(
                            text: 'Register',
                            onpressed: () {
                              navigateTo(context, RegisterScreen());
                            },
                          ),
                        ),


                        // const Center(
                        //   child: Text(
                        //     "Also can sign in with ",
                        //     style: TextStyle(
                        //         color: MyColor.pink,
                        //         fontSize: 14,
                        //         fontFamily: "TiltNeon"),
                        //   ),
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     Container(
                        //       width: 50,
                        //       height: 50,
                        //       decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(15),
                        //           color: MyColor.lightPink),
                        //       child: IconButton(
                        //           // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        //           icon: const FaIcon(
                        //             FontAwesomeIcons.facebookF,
                        //             color: Colors.white,
                        //           ),
                        //           onPressed: () {
                        //             print("Pressed");
                        //           }),
                        //     ),
                        //     Container(
                        //       width: 50,
                        //       height: 50,
                        //       decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(15),
                        //           color: MyColor.lightPink),
                        //       child: IconButton(
                        //           // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        //           icon: const FaIcon(
                        //             FontAwesomeIcons.google,
                        //             color: Colors.white,
                        //           ),
                        //           onPressed: () {
                        //             print("Pressed");
                        //           }),
                        //     ),
                        //     Container(
                        //       width: 50,
                        //       height: 50,
                        //       decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(15),
                        //           color: MyColor.lightPink),
                        //       child: IconButton(
                        //           // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        //           icon: const FaIcon(
                        //             FontAwesomeIcons.apple,
                        //             color: Colors.white,
                        //           ),
                        //           onPressed: () {
                        //             print("Pressed");
                        //           }),
                        //     ),
                        //     Material(
                        //       color: MyColor.lightPink,
                        //       borderRadius: BorderRadius.circular(15),
                        //       child: InkWell(
                        //         onTap: () {},
                        //         child: ClipRRect(
                        //           borderRadius: BorderRadius.circular(50),
                        //           child: Image.asset(
                        //               'lib/assets/images/Icon simple-huawei.png',
                        //               width: 50,
                        //               height: 50),
                        //         ),
                        //       ),
                        //     )
                        //   ],
                        // )
                      ],
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
