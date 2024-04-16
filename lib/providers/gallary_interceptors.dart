import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _unauthorizedMessages = [
  'Unauthorized',
  'Unauthenticated',
  // 'Incorrect credentials'
];

class GallaryInterceptors extends Interceptor {
  final Ref _ref;

  GallaryInterceptors(this._ref);

  final userAgent = 'User-Agent';

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.type == DioExceptionType.unknown && err is! SocketException && !err.requestOptions.baseUrl.contains('s3')) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        super.onError(err, handler);
      });
    }
    else if (err.response?.statusCode == 500) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        super.onError(err, handler);
      });
    }
    else if (!err.requestOptions.path.endsWith('/auth') && (err.response?.data is Map) && ((err.response!.data as Map).containsKey('error'))) {
      final error = err.response!.data['error'].toString();
      if (_unauthorizedMessages.any((element) => error.contains(element))) {
          super.onError(err, handler);
      }else{
        super.onError(err, handler);
      }
    } else if (err.response?.statusCode == 401) {
      if(err.response?.data["message"] == "Invalid OTP or expired"){
        super.onError(err, handler);
      }else if(err.response?.data["message"] == "Invalid credentials!"){
        super.onError(err, handler);
      }else{
        super.onError(err, handler);
      }
    } else {
      super.onError(err, handler);
    }
  }

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.responseType == ResponseType.json) {

      options.headers.addAll({
      });

    }
    return super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    if (response.data is Map) {
      final data = response.data as Map<String, dynamic>;
      if (data.containsKey('message') &&
          !(data['message'] as String).contains('success') &&
          (data.containsKey('success') && !(data['success'] as bool))) {
        final message = data['message'] as String;

        if (_unauthorizedMessages.any((element) => message.contains(element))) {
          return handler.reject(
            DioException(
              type: DioExceptionType.badResponse,
              response: Response(
                statusCode: 401,
                data: response.data,
                requestOptions: response.requestOptions,
              ),
              requestOptions: response.requestOptions,
            ),
            true,
          );
        }else{
          super.onResponse(response, handler);
        }
      } else if (data.containsKey('error')) {
        if (data["error"].toString() == "false"){
          super.onResponse(response, handler);
        }else{
          final error = data['error'] as String;
          if (_unauthorizedMessages.any((element) => error.contains(element))) {
            return handler.reject(
              DioException(
                type: DioExceptionType.badResponse,
                response: Response(
                  statusCode: 401,
                  data: response.data,
                  requestOptions: response.requestOptions,
                ),
                requestOptions: response.requestOptions,
              ),
              true,
            );
          }else{
            super.onResponse(response, handler);
          }
        }
      } else {
        super.onResponse(response, handler);
      }
    } else {
      super.onResponse(response, handler);
    }
  }
}
