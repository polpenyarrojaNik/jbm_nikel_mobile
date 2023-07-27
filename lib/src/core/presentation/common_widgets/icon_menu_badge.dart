import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/notifications/core/application/notification_provider.dart';

class IconMenuBadge extends ConsumerWidget {
  const IconMenuBadge(this.scaffoldKey, {super.key});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(notificationNotifierProvider);

    return Stack(
      children: [
        IconButton(
          onPressed: () => scaffoldKey.currentState?.openDrawer(),
          icon: const Icon(Icons.menu),
        ),
        state.maybeWhen(
            orElse: () => Container(),
            data: (_) => _ != null
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
                : Container()),
      ],
    );
  }
}
