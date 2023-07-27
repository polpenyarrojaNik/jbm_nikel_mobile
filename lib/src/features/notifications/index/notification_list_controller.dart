import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/domain/notification_list.dart';
import '../core/infrastructure/notification_repository.dart';

part 'notification_list_controller.g.dart';

@riverpod
class NotificationIndexScreenController
    extends _$NotificationIndexScreenController {
  NotificationIndexScreenController();

  @override
  Future<List<NotificationList>> build() {
    return ref.read(notificationRepositoryProvider).getNotificationList();
  }
}
