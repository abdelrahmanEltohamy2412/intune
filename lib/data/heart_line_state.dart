import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/heart_live_model.dart';

class HeartLineState{
  final dio = Dio();
 Map<String ,dynamic> heartLineList ={};
  Future<Object> heartLine() async {
    try {
      var response = await dio.get(
         'https://6be0-156-203-185-220.ngrok-free.app/api/ecg-data/2'

      );
      print('respone data ${response.data}');
      print('respone  statuscode${response.statusCode}');

      var data = jsonDecode(response.data);
      // data.forEach((elm){
      //   heartLineList.add(elm);
      // });
      heartLineList = response.data;

      return heartLineList;
    } catch (e) {
      print('error $e');
      return Exception('error ==> $e');
    }
  }

}