import 'dart:convert';

import 'package:dio/dio.dart';

import 'app_exception.dart';

Error getApiError(Object e) {
  if (e is DioError) {
    if (e.response != null && e.response!.data != null) {
      final responseStr = e.response!.data;
      try {
        final responseJson = jsonDecode(responseStr);

        final responseErrorJson =
            responseJson['detalle'] ?? responseJson['message'] as String?;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, responseErrorJson ?? '');
      } catch (decodeError) {
        throw AppException.restApiFailure(
            e.response!.statusCode ?? 500, e.response?.statusMessage ?? '');
      }
    } else {
      throw AppException.restApiFailure(
          e.response?.statusCode ?? 400, e.response?.statusMessage ?? '');
    }
  } else {
    throw e;
  }
}
