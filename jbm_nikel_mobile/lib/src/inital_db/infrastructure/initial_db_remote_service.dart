import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/db/database.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/dio_extension.dart';
import 'package:jbm_nikel_mobile/src/core/shared/providers.dart';

import '../../core/infrastructure/exceptions.dart';
import '../../core/infrastructure/remote_response.dart';
import '../../core/shared/log.dart';

final initialDbRemoteServiceProvider =
    Provider((ref) => InitialDbRemoteService(ref.watch(dioProvider)));

class InitialDbRemoteService {
  final Dio _dio;

  InitialDbRemoteService(this._dio);

  Future<dynamic> getInitialDb({
    required Uri requestUri,
  }) async {
    try {
      log.info('${(this).runtimeType}.getPage - Get Uri: $requestUri');
      final response = await _dio.getUri(
        requestUri,
        options: Options(
            responseType: ResponseType.bytes,
            receiveDataWhenStatusError: true,
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }),
      );
      log.info(
          '${(this).runtimeType}.getPage - Received response: ${response.statusCode}');
      log.info(
          '${(this).runtimeType}.getPage - ETag: ${response.headers.map['ETag']}');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw RestApiException(response.statusCode, response.toString(), null);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw RestApiException(
            e.response?.statusCode,
            (e.response?.data is Map)
                ? e.response?.data['detail'] ?? e.response?.data['message']
                : e.response?.statusMessage,
            e.stackTrace);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }
}
