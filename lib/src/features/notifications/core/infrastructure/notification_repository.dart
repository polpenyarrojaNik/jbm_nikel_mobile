import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/application/log_service.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/exceptions/get_api_error.dart';
import '../../../../core/helpers/error_logger.dart';
import '../../../../core/presentation/app.dart';
import '../../../usuario/application/usuario_notifier.dart';
import '../../../usuario/domain/usuario.dart';
import '../domain/notificacion.dart';
import '../domain/notification_list.dart';
import 'notification_dto.dart';
import 'notification_list_dto.dart';

part 'notification_repository.g.dart';

@Riverpod(keepAlive: true)
NotificationRepository notificationRepository(Ref ref) {
  final user = ref.watch(usuarioNotifierProvider);
  final dio = ref.watch(dioProvider);
  final errorLogger = ref.watch(errorLoggerProvider);

  return NotificationRepository(dio, user!, errorLogger);
}

typedef Json = Map<String, dynamic>;

class NotificationRepository {
  final Dio dio;
  final Usuario? user;
  final ErrorLogger errorLogger;

  static const int pageSize = 100;

  NotificationRepository(this.dio, this.user, this.errorLogger);

  final List<NotificationList> _notificationListCache = [];

  Future<List<NotificationList>> getNotificationList({
    required int page,
  }) async {
    final notificationList = await _remoteNotificationList(
      requestUri: (user!.test)
          ? Uri.http(
              dotenv.get('URL_TEST', fallback: 'localhost:3001'),
              'api/v8/online/notificacion',
              {
                'USER_ID': user!.id,
                'page': page.toString(),
                'pageSize': pageSize.toString(),
              },
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v8/online/notificacion',
              {
                'USER_ID': user!.id,
                'page': page.toString(),
                'pageSize': pageSize.toString(),
              },
            ),
      jsonDataSelector: (json) => json['data'] as List<dynamic>,
      provisionalToken: user!.provisionalToken,
    );

    if (page == 1) {
      _notificationListCache.clear();
    }

    _notificationListCache.addAll(
      notificationList.map((e) => e.toDomain()).toList(),
    );

    return _notificationListCache;
  }

  Future<int> getNotificationListCount() async {
    final count = await _remoteNotificationListCount(
      requestUri: (user!.test)
          ? Uri.http(
              dotenv.get('URL_TEST', fallback: 'localhost:3001'),
              'api/v8/online/notificacion_count',
              {'USER_ID': user!.id},
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v8/online/notificacion_count',
              {'USER_ID': user!.id},
            ),
      jsonDataSelector: (json) => json['data'] as int,
      provisionalToken: user!.provisionalToken,
    );

    return count;
  }

  Future<Notificacion> getNotificationById(String id) async {
    final notificationDto = await _remoteNotificationById(
      requestUri: (user!.test)
          ? Uri.http(
              dotenv.get('URL_TEST', fallback: 'localhost:3001'),
              'api/v8/online/notificacion/$id',
              {'USER_ID': user!.id},
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v8/online/notificacion/$id',
              {'USER_ID': user!.id},
            ),
      jsonDataSelector: (json) => json['data'] as Map<String, dynamic>,
      provisionalToken: user!.provisionalToken,
    );

    return notificationDto.toDomain();
  }

  Future<String?> haveNotification() async {
    try {
      final notificationId = await _remoteHaveNotification(
        requestUri: (user!.test)
            ? Uri.http(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/check_notificacion',
                {'USER_ID': user!.id},
              )
            : Uri.https(
                dotenv.get('URL', fallback: 'localhost:3001'),
                'api/v1/online/check_notificacion',
                {'USER_ID': user!.id},
              ),
        jsonDataSelector: (json) => json['data'] as Map<String, dynamic>,
        provisionalToken: user!.provisionalToken,
      );

      return notificationId;
    } catch (e) {
      log.e(e);
      return null;
    }
  }

  Future<File?> getNotificacionAdjuntoFile({
    required String notificacionId,
    required int codAdjunto,
    required String nombreArchivo,
  }) async {
    final data = await _remoteGetAttachment(
      requestUri: (user!.test)
          ? Uri.http(
              dotenv.get('URL_TEST', fallback: 'localhost:3001'),
              'api/v1/online/adjunto/notificacion/$notificacionId/$codAdjunto',
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/adjunto/notificacion/$notificacionId/$codAdjunto',
            ),
      provisionalToken: user!.provisionalToken,
    );

    try {
      final cahceDirectories = await getTemporaryDirectory();

      final file = await File(
        '${cahceDirectories.path}/notificaciones/$notificacionId/$nombreArchivo',
      ).create(recursive: true);
      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(data);
      await raf.close();
      return file;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        AppException.createFileInCacheFailure(e.toString()),
        stackTrace,
      );
    }
  }

  Future<List<NotificationListDto>> _remoteNotificationList({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
    required String provisionalToken,
  }) async {
    try {
      final response = await dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data);
        return data
            .map((e) => NotificationListDto.fromJson(e as Json))
            .toList();
      }
      throw AppException.restApiFailure(
        response.statusCode ?? 400,
        response.statusMessage ?? '',
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        getApiError(e, stackTrace, errorLogger),
        stackTrace,
      );
    }
  }

  Future<int> _remoteNotificationListCount({
    required Uri requestUri,
    required int Function(dynamic json) jsonDataSelector,
    required String provisionalToken,
  }) async {
    try {
      final response = await dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data);
        return data;
      }
      throw AppException.restApiFailure(
        response.statusCode ?? 400,
        response.statusMessage ?? '',
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        getApiError(e, stackTrace, errorLogger),
        stackTrace,
      );
    }
  }

  Future<NotificationDto> _remoteNotificationById({
    required Uri requestUri,
    required Map<String, dynamic> Function(dynamic json) jsonDataSelector,
    required String provisionalToken,
  }) async {
    try {
      final response = await dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data);
        return NotificationDto.fromJson(data);
      }
      throw AppException.restApiFailure(
        response.statusCode ?? 400,
        response.statusMessage ?? '',
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        getApiError(e, stackTrace, errorLogger),
        stackTrace,
      );
    }
  }

  Future<String?> _remoteHaveNotification({
    required Uri requestUri,
    required Map<String, dynamic> Function(dynamic json) jsonDataSelector,
    required String provisionalToken,
  }) async {
    try {
      final response = await dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data);
        return data['notificacion_guid'] as String?;
      }
      throw AppException.restApiFailure(
        response.statusCode ?? 400,
        response.statusMessage ?? '',
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        getApiError(e, stackTrace, errorLogger),
        stackTrace,
      );
    }
  }

  Future<List<int>> _remoteGetAttachment({
    required Uri requestUri,
    required String provisionalToken,
  }) async {
    try {
      final response = await dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
          responseType: ResponseType.bytes,
          receiveDataWhenStatusError: true,
        ),
      );
      if (response.statusCode == 200) {
        return (response.data as List<Object?>).cast();
      }
      throw AppException.restApiFailure(
        response.statusCode ?? 400,
        response.statusMessage ?? '',
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        getApiError(e, stackTrace, errorLogger),
        stackTrace,
      );
    }
  }
}
