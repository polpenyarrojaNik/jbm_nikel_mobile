import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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

  NotificationRepository(this.dio, this.user, this.errorLogger);

  Future<List<NotificationList>> getNotificationList() async {
    final notificationList = await _remoteNotificationList(
      requestUri: (user!.test)
          ? Uri.http(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/notificacion',
              {'USER_ID': user!.id},
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/notificacion',
              {'USER_ID': user!.id},
            ),
      jsonDataSelector: (json) => json['data'] as List<dynamic>,
      provisionalToken: user!.provisionalToken,
    );

    return notificationList.map((e) => e.toDomain()).toList();
  }

  Future<Notificacion> getNotificationById(String id) async {
    final notificationDto = await _remoteNotificationById(
      requestUri: (user!.test)
          ? Uri.http(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/notificacion/$id',
              {'USER_ID': user!.id},
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/notificacion/$id',
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
}
