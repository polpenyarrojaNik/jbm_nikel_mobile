import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../features/notifications/core/application/notification_provider.dart';
import '../../routing/app_auto_router.dart';

class IconMenuBadge extends ConsumerStatefulWidget {
  const IconMenuBadge(this.scaffoldKey, {super.key});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  ConsumerState<IconMenuBadge> createState() => _IconMenuBadgeState();
}

class _IconMenuBadgeState extends ConsumerState<IconMenuBadge> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(notificationProvider(widget.scaffoldKey));

    ref.listen<AsyncValue<String?>>(
      notificationProvider(widget.scaffoldKey),
      (_, state) => state.whenData((notificationId) {
        if (notificationId != null) {
          context.router.push(
            NotificationDetailRoute(notificationId: notificationId),
          );
        }
      }),
    );

    return Stack(
      children: [
        IconButton(
          onPressed: () => widget.scaffoldKey.currentState?.openDrawer(),
          icon: const Icon(Icons.menu),
        ),
        state.maybeWhen(
          orElse: () => Container(),
          data: (data) => data != null
              ? Positioned(
                  right: 18,
                  top: 14,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 8,
                      minHeight: 8,
                    ),
                    child: Container(),
                  ),
                )
              : Container(),
        ),
      ],
    );
  }
}
