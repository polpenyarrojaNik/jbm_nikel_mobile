import 'package:auto_updater/auto_updater.dart' deferred as auto_updater;
import 'package:flutter/foundation.dart';

bool get supportsAutoUpdater =>
    !kIsWeb && defaultTargetPlatform == TargetPlatform.windows;

Future<void> configureAutoUpdater(String feedUrl) async {
  if (!supportsAutoUpdater) {
    return;
  }

  await auto_updater.loadLibrary();
  await auto_updater.autoUpdater.setFeedURL(feedUrl);
  await auto_updater.autoUpdater.checkForUpdates(inBackground: true);
  await auto_updater.autoUpdater.setScheduledCheckInterval(3600);
}

Future<void> checkForAppUpdates({required bool inBackground}) async {
  if (!supportsAutoUpdater) {
    return;
  }

  await auto_updater.loadLibrary();
  await auto_updater.autoUpdater.checkForUpdates(inBackground: inBackground);
}
