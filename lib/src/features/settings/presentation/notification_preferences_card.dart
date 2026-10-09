import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../generated/l10n.dart';
import '../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../core/presentation/toasts.dart';
import 'notification_preferences_controller.dart';

/// Tarjeta de ajustes donde el usuario elige qué tipos de notificación
/// se abren en popup. Cada cambio se guarda al instante en la API.
class NotificationPreferencesCard extends ConsumerWidget {
  const NotificationPreferencesCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final state = ref.watch(notificationPreferencesControllerProvider);

    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      color: theme.colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: theme.colorScheme.outlineVariant),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.notifications_active_outlined,
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                  ),
                  const Gap(12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).settings_notificacionesPopup,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Gap(2),
                        Text(
                          S.of(context).settings_notificacionesPopupDescripcion,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(8),
            state.when(
              loading: () => const Padding(
                padding: EdgeInsets.all(24),
                child: ProgressIndicatorWidget(),
              ),
              error: (e, _) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    ErrorMessageWidget(e.toString()),
                    TextButton.icon(
                      onPressed: () => ref.invalidate(
                        notificationPreferencesControllerProvider,
                      ),
                      icon: const Icon(Icons.refresh),
                      label: Text(
                        S.of(context).settings_notificacionesPopupReintentar,
                      ),
                    ),
                  ],
                ),
              ),
              data: (items) => items.isEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        S.of(context).settings_notificacionesPopupVacio,
                      ),
                    )
                  : Column(
                      children: [
                        for (final item in items)
                          _NotificationTypeTile(item: item),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NotificationTypeTile extends ConsumerWidget {
  const _NotificationTypeTile({required this.item});

  final NotificationTypeSetting item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final active = item.abrirSN;

    return SwitchListTile(
      value: active,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      secondary: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: active
              ? theme.colorScheme.primary.withValues(alpha: 0.12)
              : theme.colorScheme.surfaceContainerHighest,
        ),
        child: Icon(
          _iconFor(item.type.codTipo),
          size: 22,
          color: active
              ? theme.colorScheme.primary
              : theme.colorScheme.onSurfaceVariant,
        ),
      ),
      title: Text(item.type.descripcion),
      onChanged: (value) => _onChangedNotificationSetting(context, ref, value),
    );
  }

  IconData _iconFor(String codTipo) {
    return switch (codTipo.toUpperCase()) {
      'GENERAL' => Icons.campaign_outlined,
      'INFORME' => Icons.assessment_outlined,
      'CARRITO' => Icons.shopping_cart_outlined,
      'ENTREGA_ALBARAN' => Icons.local_shipping_outlined,
      _ => Icons.notifications_outlined,
    };
  }

  void _onChangedNotificationSetting(
    BuildContext context,
    WidgetRef ref,
    bool value,
  ) async {
    try {
      await ref
          .read(notificationPreferencesControllerProvider.notifier)
          .setAbrir(item.type.codTipo, value);
    } catch (_) {
      if (context.mounted) {
        await showToast(
          S.of(context).settings_notificacionesPopupErrorGuardar,
          context,
        );
      }
    }
  }
}
