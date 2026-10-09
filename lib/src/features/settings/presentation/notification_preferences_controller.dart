import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../notifications/core/domain/notification_type.dart';
import '../../notifications/core/domain/notification_type_preference.dart';
import '../../notifications/core/infrastructure/notification_repository.dart';

part 'notification_preferences_controller.freezed.dart';
part 'notification_preferences_controller.g.dart';

@freezed
abstract class NotificationTypeSetting with _$NotificationTypeSetting {
  const NotificationTypeSetting._();
  const factory NotificationTypeSetting({
    required NotificationType type,
    required bool abrirSN,
  }) = _NotificationTypeSetting;
}

@riverpod
class NotificationPreferencesController
    extends _$NotificationPreferencesController {
  @override
  Future<List<NotificationTypeSetting>> build() async {
    final repository = ref.watch(notificationRepositoryProvider);
    final results = await Future.wait([
      repository.getNotificationTypes(),
      repository.getNotificationTypePreferences(),
    ]);
    final types = results[0] as List<NotificationType>;
    final preferences = {
      for (final p in results[1] as List<NotificationTypePreference>)
        p.codTipo: p.abrirSN,
    };

    // Si el usuario no ha elegido nada, se usa el valor por defecto del tipo.
    return types
        .map(
          (t) => NotificationTypeSetting(
            type: t,
            abrirSN: preferences[t.codTipo] ?? t.abrirSN,
          ),
        )
        .toList();
  }

  /// Cambia la opción de un tipo y la envía a la API. Si falla, se revierte
  /// y se relanza el error para que la pantalla lo muestre.
  Future<void> setAbrir(String codTipo, bool abrirSN) async {
    final previous = state.value;
    if (previous == null) return;

    state = AsyncData([
      for (final s in previous)
        if (s.type.codTipo == codTipo) s.copyWith(abrirSN: abrirSN) else s,
    ]);

    try {
      await ref
          .read(notificationRepositoryProvider)
          .saveNotificationTypePreferences([
            NotificationTypePreference(codTipo: codTipo, abrirSN: abrirSN),
          ]);
    } catch (_) {
      state = AsyncData(previous);
      rethrow;
    }
  }
}
