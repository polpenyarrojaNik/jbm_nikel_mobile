import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/dio_extension.dart';
import 'package:jbm_nikel_mobile/src/core/shared/providers.dart';
import 'package:jbm_nikel_mobile/src/sales_order/infrastructure/sales_order_headers.dart';

import '../../core/infrastructure/exceptions.dart';
import '../../core/infrastructure/remote_response.dart';
import '../../core/shared/log.dart';

final syncRemoteServiceProvider =
    Provider((ref) => SyncRemoteService(ref.watch(dioProvider)));

class SyncRemoteService {
  final Dio _dio;

  SyncRemoteService(this._dio);

  Future<RemoteResponse<List<Map<String, dynamic>>>> syncAllSalesOrder({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
  }) async {
    try {
      log.info('${(this).runtimeType}.getPage - Get Uri: $requestUri');
      final response = await _dio.getUri(
        requestUri,
      );
      log.info(
          '${(this).runtimeType}.getPage - Received response: ${response.statusCode}');

      if (response.statusCode == 200) {
        final convertedDate = jsonDataSelector(response.data)
            .map((salesOrderMap) => salesOrderMap as Map<String, dynamic>)
            .toList();
        final headers = SalesOrderHeaders.parse(response);

        log.info('${(this).runtimeType}.getPage - Saved cache');
        return RemoteResponse.withNewData(
          convertedDate,
          maxPage: headers.maxPage ?? 1,
          totalRows: headers.totalRows ?? 0,
        );
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

  Future<String> getDbSysdate({
    required Uri requestUri,
    required dynamic Function(dynamic json) jsonDataSelector,
  }) async {
    try {
      log.info('${(this).runtimeType}.getDbSysdate - Get Uri: $requestUri');
      final response = await _dio.getUri(
        requestUri,
      );
      log.info(
          '${(this).runtimeType}.getDbSysdate - Received response: ${response.statusCode}');

      if (response.statusCode == 200) {
        final convertedDate = jsonDataSelector(response.data);

        log.info('${(this).runtimeType}.getPage - Saved cache');
        return convertedDate;
      } else {
        throw RestApiException(response.statusCode, response.toString(), null);
      }
    } on DioError catch (e) {
      if (e.response != null) {
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
