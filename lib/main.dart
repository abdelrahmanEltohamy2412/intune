
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intune/network/data_resourses/remote/dio_helper.dart';
import 'package:intune/screens/signScreens/splash.dart';

import 'network/data_resourses/local/cachehelper.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();

  await DioHelper.init();
  await CacheHelper.init();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
