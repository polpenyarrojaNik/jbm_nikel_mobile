import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../infrastructure/notification_repository.dart';

part 'notification_provider.g.dart';

final openNotificationProvider = StateProvider<String?>(
  (ref) => null,
);

final handledNotificationIdsProvider = StateProvider<Set<String>>(
  (ref) => <String>{},
);

@riverpod
class NotificationNotifier extends _$NotificationNotifier {
  @override
  Future<String?> build(String titleScreen) async {
    final notificationId = await ref
        .watch(notificationRepositoryProvider)
        .haveNotification();

    return notificationId;
  }

  Future<void> check() async {
    final notificationId = await ref
        .read(notificationRepositoryProvider)
        .haveNotification();
    state = AsyncData(notificationId);
  }

  void clear() {
    state = const AsyncData<String?>(null);
  }
}
