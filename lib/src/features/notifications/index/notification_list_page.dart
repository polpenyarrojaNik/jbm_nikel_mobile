import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../generated/l10n.dart';
import '../../../core/helpers/formatters.dart';
import '../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../core/routing/app_auto_router.dart';
import '../core/application/notification_provider.dart';
import '../core/domain/notification_list.dart';
import '../core/infrastructure/notification_repository.dart';
import 'notification_list_controller.dart';

@RoutePage()
class NotificationIndexPage extends ConsumerWidget {
  NotificationIndexPage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateCount = ref.watch(notificationIndexCountControllerProvider);

    final stateHaveNotification = ref.watch(notificationProvider);
    return Scaffold(
      key: scaffoldKey,
      drawer: const AppDrawer(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => scaffoldKey.currentState?.openDrawer(),
          icon: Icon(
            stateHaveNotification.maybeWhen(
              orElse: () => Icons.menu,
              data: (notificationId) =>
                  notificationId != null ? Icons.notification_add : Icons.menu,
            ),
          ),
        ),
        title: Text(S.of(context).notifications),
      ),
      body: RefreshIndicator(
        onRefresh: () async =>
            ref.invalidate(notificationIndexScreenControllerProvider),
        child: stateCount.when(
          data: (notificationListCount) => ListView.separated(
            itemBuilder: (context, i) => NotificationPaginationList(i: i),
            separatorBuilder: (context, i) => const Divider(),
            itemCount: notificationListCount,
          ),
          error: (error, _) =>
              Center(child: ErrorMessageWidget(error.toString())),
          loading: () => const Center(child: ProgressIndicatorWidget()),
        ),
      ),
    );
  }
}

class NotificationPaginationList extends ConsumerWidget {
  const NotificationPaginationList({super.key, required this.i});

  final int i;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(
          notificationIndexScreenControllerProvider(
            ((i ~/ NotificationRepository.pageSize) + 1),
          ),
        )
        .maybeWhen(
          data: (notificationList) => _NotificationListTile(
            notificationList:
                notificationList[i % NotificationRepository.pageSize],
          ),

          orElse: () => const LinearProgressIndicator(),
        );
  }
}

class _NotificationListTile extends StatelessWidget {
  const _NotificationListTile({required this.notificationList});

  final NotificationList notificationList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => context.router.push(
        NotificationDetailRoute(
          notificationId: notificationList.notificationId,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            if (!notificationList.leidoSN) ...[
              Icon(
                Icons.circle,
                size: 12,
                color: Theme.of(context).primaryColor,
              ),
              const Gap(8),
            ],
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            notificationList.mensaje,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        if (notificationList.tieneAdjuntoSN) ...[
                          const Gap(4),
                          const Icon(Icons.attach_file, size: 12),
                        ],
                      ],
                    ),
                  ),
                  const Gap(16),

                  Text(
                    dateFormatter(
                      notificationList.fecha.toIso8601String(),
                      allDay: true,
                    ),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
