import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/helpers/formatters.dart';
import '../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../core/presentation/theme/app_sizes.dart';
import '../core/application/notification_provider.dart';
import 'notification_list_controller.dart';

import '../../../../generated/l10n.dart';
import '../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../core/routing/app_auto_router.dart';
import '../core/domain/notification_list.dart';

@RoutePage()
class NotificationIndexPage extends ConsumerWidget {
  NotificationIndexPage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(notificationIndexScreenControllerProvider);

    final stateNotification = ref.watch(notificationNotifierProvider);
    return Scaffold(
      key: scaffoldKey,
      drawer: const AppDrawer(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => scaffoldKey.currentState?.openDrawer(),
          icon: Icon(
            stateNotification.maybeWhen(
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
        child: state.when(
          data: (notificationList) => ListView.separated(
            itemBuilder: (context, i) => _NotificationListTile(
              notificationList: notificationList[i],
            ),
            separatorBuilder: (context, i) => const Divider(),
            itemCount: notificationList.length,
          ),
          error: (error, _) => Center(
            child: ErrorMessageWidget(
              error.toString(),
            ),
          ),
          loading: () => const Center(
            child: ProgressIndicatorWidget(),
          ),
        ),
      ),
    );
  }
}

class _NotificationListTile extends StatelessWidget {
  const _NotificationListTile({required this.notificationList});

  final NotificationList notificationList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(NotificationDetailRoute(
          notificationId: notificationList.notificationId)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            if (!notificationList.leidoSN)
              Icon(
                Icons.circle,
                size: 12,
                color: Theme.of(context).primaryColor,
              ),
            if (!notificationList.leidoSN) gapW8,
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      notificationList.mensaje,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  gapW16,
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
