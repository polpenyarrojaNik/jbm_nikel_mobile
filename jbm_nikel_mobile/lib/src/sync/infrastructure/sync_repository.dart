import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/sync/infrastructure/sync_local_service.dart';
import 'package:jbm_nikel_mobile/src/sync/infrastructure/sync_remote_service.dart';

import '../../core/domain/jbm_mobile_failure.dart';
import '../../core/infrastructure/exceptions.dart';
import '../../core/shared/log.dart';

final syncRepositoryProvider = Provider((ref) => SyncRepository(
    ref.watch(syncLocalServiceProvider), ref.watch(syncRemoteServiceProvider)));

class SyncRepository {
  final SyncLocalService _localService;
  final SyncRemoteService _remoteService;

  SyncRepository(this._localService, this._remoteService);

  Future<Either<JbmMobileFailure, Unit>> syncAllSalesOrder() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? _totalRows;

    try {
      final dbSysdateStr = await _remoteService.getDbSysdate(
          requestUri: Uri.http(
            dotenv.get('URL', fallback: 'loclahost:3001'),
            '/api/v1/date',
          ),
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await _localService.getLastSyncSalesOrderDate();
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
        final remotePageItems = await _remoteService.syncAllSalesOrder(
            requestUri: Uri.http(
              dotenv.get('URL', fallback: 'localhost:3001'),
              '/api/v1/sales-order',
              query,
            ),
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            await _localService.upsertSalesOrder(data);

            isNextPageAvailable = page < maxPage;
            _totalRows = totalRows;
            page += 1;
          },
        );
      }
      await _localService.addLastSyncSalesOrder(lastSyncDate: dbSysdateStr);

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
}
