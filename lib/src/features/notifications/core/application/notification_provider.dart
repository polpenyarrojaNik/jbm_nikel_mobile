import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/have_notification.dart';
import '../infrastructure/notification_repository.dart';

part 'notification_provider.g.dart';

final openNotificationProvider = StateProvider<HaveNotification?>(
  (ref) => null,
);

final handledNotificationIdsProvider = StateProvider((ref) => <String>{});

@riverpod
class NotificationNotifier extends _$NotificationNotifier {
  @override
  Future<HaveNotification?> build(String titleScreen) async {
    final notificationId = await ref
        .watch(notificationRepositoryProvider)
        .haveNotification();

    return notificationId;
  }

  Future<void> check() async {
    final notificationId = await ref
        .read(notificationRepositoryProvider)
        .haveNotification();
    // El provider es autoDispose: si la pantalla se ha cerrado (o el provider
    // se ha reconstruido) durante el await, ya no podemos tocar `state`.
    if (!ref.mounted) return;
    state = AsyncData(notificationId);
  }

  void clear() {
    if (!ref.mounted) return;
    state = const AsyncData<HaveNotification?>(null);
  }
}
