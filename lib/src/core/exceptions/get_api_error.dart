import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/dio_extension.dart';

import 'app_exception.dart';

Error getApiError(Object e) {
  if (e is DioError) {
    if (e.response != null && e.response!.data != null) {
      final responseData = e.response!.data;
      try {
        Map<String, dynamic> responseJson;
        if (responseData is String) {
          responseJson = jsonDecode(responseData);
        } else if (responseData is List<int>) {
          throw AppException.restApiFailure(
              e.response?.statusCode ?? 400, utf8.decode(responseData));
        } else {
          responseJson = responseData['error'];
        }

        final responseErrorJson =
            responseJson['detail'] ?? responseJson['message'] as String?;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, responseErrorJson ?? '');
      } catch (decodeError) {
        if (decodeError is AppException) {
          rethrow;
        }
        throw AppException.restApiFailure(
            e.response!.statusCode ?? 500, e.response?.statusMessage ?? '');
      }
    } else if (e.isNoConnectionError) {
      throw const AppException.notConnection();
    } else {
      throw AppException.restApiFailure(
          e.response?.statusCode ?? 400, e.response?.statusMessage ?? '');
    }
  } else {
    throw e;
  }
}
