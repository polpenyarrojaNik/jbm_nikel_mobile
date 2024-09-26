import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/dio_extension.dart';

import 'app_exception.dart';

Error getApiError(Object e) {
  if (e is DioException) {
    if (e.isNoConnectionError) {
      throw const AppException.notConnection();
    } else if (e.response != null && e.response!.data != null) {
      final responseData = e.response!.data;
      try {
        Map<String, dynamic> responseJson;
        if (responseData is String) {
          responseJson = jsonDecode(responseData);
        } else if (responseData is List<int>) {
          final errorString = utf8.decode(responseData);

          if (errorString.contains('no such file or directory')) {
            throw const AppException.noSuchFileOrDirectory();
          }
          throw AppException.restApiFailure(
              e.response?.statusCode ?? 400, errorString);
        } else {
          responseJson = responseData;
        }

        final responseErrorJson = responseJson['detail'] ??
            '${responseJson['message']}${(responseJson['body'][0] != null && responseJson['body'][0]['error'] != null) ? ': ${responseJson['body'][0]['error']}' : ''}';

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, responseErrorJson ?? '');
      } catch (decodeError) {
        if (decodeError is AppException) {
          rethrow;
        }
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
