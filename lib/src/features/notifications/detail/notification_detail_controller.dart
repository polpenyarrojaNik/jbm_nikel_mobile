import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/domain/notificacion.dart';
import '../core/infrastructure/notification_repository.dart';

part 'notification_detail_controller.g.dart';

@riverpod
class NotificationDetailScreenController
    extends _$NotificationDetailScreenController {
  NotificationDetailScreenController();

  @override
  Future<Notificacion> build(String id) {
    return ref.read(notificationRepositoryProvider).getNotificationById(id);
  }
}
