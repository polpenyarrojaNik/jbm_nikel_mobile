import 'dart:convert';

import 'package:dio/dio.dart';

import '../infrastructure/dio_extension.dart';
import 'app_exception.dart';

Error getApiError(Object e) {
  if (e is DioException) {
    if (e.isNoConnectionError) {
      throw const AppException.notConnection();
    } else if (e.response != null && e.response!.data != null) {
      final responseData = e.response!.data;
      try {
        final responseJson = _parseResponseData(responseData);
        final responseErrorJson = _extractErrorMessage(responseJson);

        throw AppException.restApiFailure(
          e.response?.statusCode ?? 400,
          responseErrorJson,
        );
      } catch (decodeError) {
        if (decodeError is AppException) {
          rethrow;
        }
        throw AppException.restApiFailure(
          e.response!.statusCode ?? 500,
          e.response?.statusMessage ?? '',
        );
      }
    } else {
      throw AppException.restApiFailure(
        e.response?.statusCode ?? 400,
        e.response?.statusMessage ?? '',
      );
    }
  } else {
    throw e;
  }
}

Map<String, dynamic> _parseResponseData(dynamic responseData) {
  if (responseData is String) {
    return jsonDecode(responseData) as Map<String, dynamic>;
  } else if (responseData is List<int>) {
    final errorString = utf8.decode(responseData);

    if (errorString.contains('no such file or directory')) {
      throw const AppException.noSuchFileOrDirectory();
    }
    throw AppException.restApiFailure(400, errorString);
  } else if (responseData is Map<String, dynamic>) {
    return responseData;
  } else {
    throw const AppException.unexpectedResponseFormat();
  }
}

String _extractErrorMessage(Map<String, dynamic> responseJson) {
  return responseJson['detail'] as String? ??
      '${responseJson['message']}${(responseJson['body'] != null && responseJson['body'][0] != null && responseJson['body'][0]['error'] != null) ? ': ${responseJson['body'][0]['error']}' : ''}';
}
