import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../infrastructure/notification_repository.dart';

part 'notification_provider.g.dart';

@Riverpod(keepAlive: true)
class NotificationNotifier extends _$NotificationNotifier {
  @override
  Future<String?> build() async {
    final notificationId = await ref
        .watch(notificationRepositoryProvider)
        .haveNotification();

    return notificationId;
  }
}
