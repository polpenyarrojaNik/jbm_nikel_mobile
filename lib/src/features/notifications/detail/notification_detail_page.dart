import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/error_message_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';
import 'package:jbm_nikel_mobile/src/features/notifications/core/application/notification_provider.dart';
import 'package:jbm_nikel_mobile/src/features/notifications/detail/notification_detail_controller.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../generated/l10n.dart';

@RoutePage()
class NotificationDetailPage extends ConsumerWidget {
  NotificationDetailPage({super.key, required this.notificationId});

  final String notificationId;

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state =
        ref.watch(notificationDetailScreenControllerProvider(notificationId));
    return WillPopScope(
      onWillPop: () async {
        ref.read(notificationNotifierProvider.notifier).haveNotification();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).notification_detail),
        ),
        body: state.when(
          data: (notification) => SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        dateFormatter(notification.fecha.toIso8601String(),
                            allDay: true),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Markdown(
                  onTapLink: (_, link, ___) {
                    if (link != null) {
                      launchUrlString(link);
                    }
                  },
                  shrinkWrap: true,
                  controller: scrollController,
                  data: notification.mensaje,
                ),
              ],
            ),
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
