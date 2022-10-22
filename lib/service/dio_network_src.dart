import 'dart:developer';

import 'package:dio/dio.dart' as dio;

class DioNetworkSrc {
  static final _dio = dio.Dio(dio.BaseOptions(
      baseUrl: 'https://dummyjson.com',
      connectTimeout: 5000,
      receiveTimeout: 5000,
      headers: {"Content-Type": "application/json"}));

//? get response
  static Future<T?> getRequest<T>(
      {Map<String, dynamic>? header, required String api}) async {
    try {
      var response = await _dio.getUri(Uri.tryParse(api)!);
      if (response.statusCode == 200) {
        return response.data as T;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

//? post response
  static Future<T?> postRequest<T>(
      {Map<String, dynamic>? header, required String api}) async {
    try {
      var response = await _dio.postUri(Uri.tryParse(api)!, data: header);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data as T;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}

class AppNetworkConsts {
  static const userLogin = '/auth/login';
  static const users = '/users';
}
