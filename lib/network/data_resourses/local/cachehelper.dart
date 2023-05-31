import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper{
 static late SharedPreferences _sharedPreferences;
  static init ()async{
    _sharedPreferences = await SharedPreferences.getInstance();
  }
  static Future<bool> saveData({required String key , required String value} ){

   return _sharedPreferences.setString(key, value);
  }
  static String ? getKey({required String key}){
   return  _sharedPreferences.getString(key) ;
  }
  static Future <bool>removeData ({required String key}){
   return _sharedPreferences.remove(key);
  }
}