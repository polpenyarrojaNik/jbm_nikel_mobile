import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/dio_extension.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/infrastructure/sales_order_dto.dart';

import '../../core/domain/jbm_mobile_failure.dart';
import '../../core/infrastructure/database.dart';
import '../../core/infrastructure/exceptions.dart';
import '../../core/infrastructure/log.dart';
import '../../core/infrastructure/remote_response.dart';
import '../../features/sales_order/infrastructure/sales_order_headers.dart';

final syncRepositoryProvider = Provider.autoDispose<SyncRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

class SyncRepository {
  AppDatabase db;
  Dio dio;

  SyncRepository(this.db, this.dio);

  Future<Either<JbmMobileFailure, Unit>> syncAllSalesOrder() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? _totalRows;

    try {
      final dbSysdateStr = await _getRemoteDbSysDate(
          requestUri: Uri.http(
            dotenv.get('URL_NIKEL', fallback: 'loclahost:3001'),
            '/api/v1/date',
          ),
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncSalesOrderDate();
      while (isNextPageAvailable) {
        final query = {
          'page': '$page',
          'pageSize': '100',
          'sysdate': dbSysdateStr
        };

        if (lastSyncDate != null) {
          query.addAll({'lastSyncDate': lastSyncDate});
        }

        if (_totalRows != null) {
          query.addAll({'totalRows': '$_totalRows'});
        }
        final remotePageItems = await _remoteSyncAllSalesOrder(
            requestUri: Uri.http(
              dotenv.get('URL_NIKEL', fallback: 'localhost:3001'),
              '/api/v1/sales-order',
              query,
            ),
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final salesOrderDTOList =
                data.map((e) => SalesOrderDTO.fromJson(e)).toList();
            for (var i = 0; i < salesOrderDTOList.length; i++) {
              await db.upsertSalesOrder(salesOrderDto: salesOrderDTOList[i]);
            }
            isNextPageAvailable = page < maxPage;
            _totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncSalesOrder(
        lastSyncDateSalesOrder: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncSalesOrder: Value(dbSysdateStr)),
      );

      return right(unit);
    } on RestApiException catch (e) {
      log.severe(e.message, e, e.stackTrace);
      return left(JbmMobileFailure.api(e.errorCode, e.message));
    } on DBException catch (e) {
      log.severe(e.message, e, e.stackTrace);
      return left(JbmMobileFailure.db(e.message));
    } catch (e, stackTrace) {
      log.severe(e.toString(), e, stackTrace);
      return left(JbmMobileFailure.local(e.toString()));
    }
  }

  Future<RemoteResponse<List<Map<String, dynamic>>>> _remoteSyncAllSalesOrder({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
  }) async {
    try {
      log.info('${(this).runtimeType}.getPage - Get Uri: $requestUri');
      final response = await dio.getUri(
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

  Future<String> _getRemoteDbSysDate({
    required Uri requestUri,
    required dynamic Function(dynamic json) jsonDataSelector,
  }) async {
    try {
      log.info('${(this).runtimeType}.getDbSysdate - Get Uri: $requestUri');
      final response = await dio.getUri(
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
