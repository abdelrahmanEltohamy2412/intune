import 'package:dio/dio.dart';


class DioHelper {
  static late Dio _dio;


  static init() {
    _dio = Dio(BaseOptions(
      baseUrl: 'https://201a-156-203-135-247.ngrok-free.app/api',
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 3600),
      receiveTimeout: const Duration(seconds: 3600),
    ));
  }

  static Future<Response> getData(
      {required String url, String? token, dynamic? query}) {
    if (token != null) {
      _dio.options.headers = {"Authorization": "Barer $token"};
    }

    return _dio.get(url, queryParameters: query);
  }

  static Future<Response> postData(
      {required String url,
      String? token,
      dynamic? query,
      dynamic body}) async {

    _dio.options.headers = {"Authorization": "Barer $token"};
    return _dio.post(url, data: body, queryParameters: query);
  }
}
