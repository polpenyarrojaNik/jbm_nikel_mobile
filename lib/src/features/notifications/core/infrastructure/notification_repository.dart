import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/application/log_service.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/exceptions/get_api_error.dart';
import '../../../../core/presentation/app.dart';
import '../../../usuario/application/usuario_notifier.dart';
import '../../../usuario/domain/usuario.dart';
import '../domain/notificacion.dart';
import '../domain/notification_list.dart';
import 'notification_dto.dart';
import 'notification_list_dto.dart';

typedef Json = Map<String, dynamic>;

final notificationRepositoryProvider = Provider<NotificationRepository>(
  (ref) {
    final dio = ref.watch(dioProvider);
    final user = ref.watch(usuarioNotifierProvider);
    return NotificationRepository(dio, user);
  },
);

class NotificationRepository {
  final Dio dio;
  final Usuario? user;

  NotificationRepository(this.dio, this.user);

  Future<List<NotificationList>> getNotificationList() async {
    try {
      final notificationList = await _remoteNotificationList(
        requestUri: (user!.test)
            ? Uri.http(
                dotenv.get('URLTEST', fallback: 'localhost:3001'),
                'api/v1/online/notificacion',
                {'USER_ID': user!.id},
              )
            : Uri.https(
                dotenv.get('URLTEST', fallback: 'localhost:3001'),
                'api/v1/online/notificacion',
                {'USER_ID': user!.id},
              ),
        jsonDataSelector: (json) => json['data'] as List<dynamic>,
        provisionalToken: user!.provisionalToken,
      );

      return notificationList.map((e) => e.toDomain()).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<Notificacion> getNotificationById(String id) async {
    try {
      final notificationDto = await _remoteNotificationById(
        requestUri: (user!.test)
            ? Uri.http(
                dotenv.get('URLTEST', fallback: 'localhost:3001'),
                'api/v1/online/notificacion/$id',
                {'USER_ID': user!.id},
              )
            : Uri.https(
                dotenv.get('URLTEST', fallback: 'localhost:3001'),
                'api/v1/online/notificacion/$id',
                {'USER_ID': user!.id},
              ),
        jsonDataSelector: (json) => json['data'] as Map<String, dynamic>,
        provisionalToken: user!.provisionalToken,
      );

      return notificationDto.toDomain();
    } catch (e) {
      rethrow;
    }
  }

  Future<String?> haveNotification(String id) async {
    try {
      final notificationId = await _remoteHaveNotification(
        requestUri: (user!.test)
            ? Uri.http(
                dotenv.get('URLTEST', fallback: 'localhost:3001'),
                'api/v1/online/check_notificacion',
                {'USER_ID': user!.id},
              )
            : Uri.https(
                dotenv.get('URLTEST', fallback: 'localhost:3001'),
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

  Future<List<NotificationListDto>> _remoteNotificationList(
      {required Uri requestUri,
      required List<dynamic> Function(dynamic json) jsonDataSelector,
      required String provisionalToken}) async {
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
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<NotificationDto> _remoteNotificationById(
      {required Uri requestUri,
      required Map<String, dynamic> Function(dynamic json) jsonDataSelector,
      required String provisionalToken}) async {
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
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<String?> _remoteHaveNotification(
      {required Uri requestUri,
      required Map<String, dynamic> Function(dynamic json) jsonDataSelector,
      required String provisionalToken}) async {
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
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }
}
