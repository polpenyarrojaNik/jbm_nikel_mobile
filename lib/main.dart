import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money2/money2.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:window_manager/window_manager.dart';

import 'src/core/helpers/extension.dart';
import 'src/core/helpers/windows_auto_updater.dart';
import 'src/core/presentation/app.dart';

void main() async {
  final isDesktop =
      !kIsWeb && (defaultTargetPlatform == TargetPlatform.windows);

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await dotenv.load();
      await _initSentry();
      Currencies().registerList(currencies);

      PaintingBinding.instance.imageCache.maximumSizeBytes = 50 << 20;

      if (isDesktop) {
        await windowManager.ensureInitialized();

        const windowsWidth = 1280.0;
        const windowsHeight = 768.0;

        const windowsMaxWidth = 2560.0;
        const windowsMaxHeight = 1440.0;
        const windowsMinWidth = kDebugMode ? 375.0 : 640.0;
        const windowsMinHeight = kDebugMode ? 480.0 : 640.0;

        final windowOptions = WindowOptions(
          size: Size(windowsWidth, windowsHeight), // +16, +39
          center: true,
          title: dotenv.get('APP_NAME'),
          backgroundColor: Colors.transparent,
          skipTaskbar: false,
          titleBarStyle: TitleBarStyle.normal,
          windowButtonVisibility: true,
          minimumSize: Size(windowsMinWidth, windowsMinHeight), // 359
          maximumSize: Size(windowsMaxWidth, windowsMaxHeight),
        );
        await windowManager.waitUntilReadyToShow(
          windowOptions,
          () => _setWindowManagerTerms(),
        );

        if (supportsAutoUpdater) {
          final feedURL = dotenv.get('URL_APP_CAST');
          await configureAutoUpdater(feedURL);
        }
      }

      runApp(
        ProviderScope(
          child: const App(),
          retry: (retryCount, error) =>
              ProviderContainer.defaultRetry(retryCount, error, maxRetries: 3),
        ),
      );

      // Los errores de build ya los reporta Sentry vía FlutterError.onError.
      ErrorWidget.builder = (FlutterErrorDetails detalles) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text('Ha ocurrido un error'),
          ),
          body: Center(child: Text(detalles.toString())),
        );
      };
    },
    (Object error, StackTrace stack) async {
      // ignore: avoid_print
      print(error);
      if (kReleaseMode) {
        await Sentry.captureException(error, stackTrace: stack);
        await Sentry.close();
      }

      exit(1);
    },
  );
}

Future<void> _setWindowManagerTerms() async {
  await windowManager.setResizable(true);
  await windowManager.show();
  await windowManager.focus();
}

Future<void> _initSentry() async {
  if (!kReleaseMode) {
    return;
  }

  await SentryFlutter.init((options) {
    options
      ..dsn = dotenv.get('SENTRY_DNS')
      ..environment = 'prod'
      ..sendDefaultPii = false
      ..attachStacktrace = true
      ..attachScreenshot = true
      ..attachViewHierarchy = true
      ..maxBreadcrumbs = 100
      ..considerInAppFramesByDefault = false
      ..addInAppInclude('jbm_nikel_mobile')
      ..tracesSampleRate = 0.2
      ..enableAutoPerformanceTracing = false
      ..beforeSend = (event, hint) async => _sentryBeforeSend(event);
  });
}

/// Descarta errores de conectividad (la app trabaja a menudo sin red),
/// que son ruido y no bugs.
SentryEvent? _sentryBeforeSend(SentryEvent event) {
  final throwable = event.throwable;
  if (throwable is SocketException || throwable is TimeoutException) {
    return null;
  }
  if (throwable is DioException &&
      (throwable.type == DioExceptionType.connectionError ||
          throwable.type == DioExceptionType.connectionTimeout ||
          throwable.type == DioExceptionType.sendTimeout ||
          throwable.type == DioExceptionType.receiveTimeout)) {
    return null;
  }

  return event;
}
