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

    try {
      while (isNextPageAvailable) {
        final remotePageItems = await _remoteService.syncAllSalesOrder(
            requestUri: Uri.https(
              dotenv.get('URL', fallback: 'loclahost:3001'),
              '/api/v1/sales-order',
              {
                'page': '$page',
                'pageSize': '500',
              },
            ),
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage) async {
            await _localService.upsertSalesOrder(data);

            isNextPageAvailable = page < maxPage;
          },
        );
      }
      return right(unit);
    } on RestApiException catch (e) {
      log.severe(e.message, e, e.stackTrace);
      return left(JbmMobileFailure.api(e.errorCode, e.message));
    } catch (e, stackTrace) {
      log.severe(e.toString(), e, stackTrace);
      return left(JbmMobileFailure.local(e.toString()));
    }
  }
}
