import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../infrastructure/notification_repository.dart';

part 'notification_provider.g.dart';

@riverpod
class NotificationNotifier extends _$NotificationNotifier {
  @override
  Future<String?> build(GlobalKey<ScaffoldState> scaffoldKey) async {
    final notificationId = await ref
        .watch(notificationRepositoryProvider)
        .haveNotification();

    return notificationId;
  }
}
