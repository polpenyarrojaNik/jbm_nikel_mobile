import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../usuario/application/usuario_notifier.dart';
import '../../../usuario/domain/usuario.dart';
import '../infrastructure/notification_repository.dart';

final notificationNotifierProvider =
    StateNotifierProvider<NotificationNotifier, AsyncValue<String?>>((ref) {
      final user = ref.watch(usuarioNotifierProvider);
      final notificationRepository = ref.watch(notificationRepositoryProvider);

      return NotificationNotifier(user, notificationRepository);
    });

class NotificationNotifier extends StateNotifier<AsyncValue<String?>> {
  final Usuario? user;
  final NotificationRepository notificationRepository;

  NotificationNotifier(this.user, this.notificationRepository)
    : super(const AsyncValue.loading());

  Future<void> haveNotification() async {
    final notificationId = await notificationRepository.haveNotification();

    state = AsyncData(notificationId);
  }
}
