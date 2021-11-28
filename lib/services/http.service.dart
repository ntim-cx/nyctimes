import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

class HttpService {
  BaseOptions baseOptions;
  Dio dio;

  Future<Map<String, String>> getHeaders() async {
    return {
      HttpHeaders.acceptHeader: "application/json",
    };
  }

  HttpService() {
    baseOptions = BaseOptions(
      receiveDataWhenStatusError: true,
      connectTimeout: 60 * 1000,
      receiveTimeout: 60 * 1000,
      validateStatus: (status) {
        return status <= 500;
      },
    );
    dio = Dio(baseOptions);
  }

  Future<Response> get(
    String url, {
    Map<String, dynamic> queryParameters,
  }) async {
    String uri = url;
    //log(uri);
    try {
      return dio.get(
        uri,
        options: Options(
          headers: await getHeaders(),
        ),
        queryParameters: queryParameters,
      );
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {}
    }
  }

  Future<Response> post(String url, body) async {
    String uri = url;
    try {
      return dio.post(
        uri,
        data: body,
        options: Options(
          headers: await getHeaders(),
        ),
      );
    } on DioError catch (e) {}
  }

  Future<Response> patch(String url, body) async {
    String uri = url;
    log(uri);
    return dio.patch(
      uri,
      data: body,
      options: Options(
        headers: await getHeaders(),
      ),
    );
  }

  Future<Response> delete(String url, {dynamic body}) async {
    String uri = url;
    log(uri);
    return dio.delete(
      uri,
      data: body,
      options: Options(
        headers: await getHeaders(),
      ),
    );
  }
}
