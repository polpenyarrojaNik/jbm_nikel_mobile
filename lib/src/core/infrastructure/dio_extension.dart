import 'dart:io';

import 'package:dio/dio.dart';

extension DioErrorX on DioException {
  bool get isNoConnectionError {
    return type == DioExceptionType.connectionError ||
        (type == DioExceptionType.unknown && error is SocketException);
  }
}
