import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
      Currencies().registerList(currencies);

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

      if (kReleaseMode) {
        await SentryFlutter.init((options) {
          options.dsn = dotenv.get('SENTRY_DNS');
          options.environment = kReleaseMode ? 'prod' : 'dev';
          options
            ..considerInAppFramesByDefault = false
            ..addInAppInclude('jbm_nikel_mobile');
          options.beforeSend = (event, hint) async =>
              _sentryBeforeSendOptions(event);
          options.tracesSampleRate = 1;
          options.enableAutoPerformanceTracing = false;
          options.attachStacktrace = true;
        });
      }

      runApp(ProviderScope(child: const App()));

      FlutterError.onError = (FlutterErrorDetails detalles) {
        FlutterError.presentError(detalles);
        if (kReleaseMode) {
          Sentry.captureException(
            detalles.exception,
            stackTrace: detalles.stack,
            withScope: (scope) {
              scope.setContexts('flutter_error', {
                'library': detalles.library,
                'context': detalles.context?.toDescription(),
              });
            },
          );
        }
      };
      ErrorWidget.builder = (FlutterErrorDetails detalles) {
        if (kReleaseMode) {
          Sentry.captureException(
            detalles.exception,
            stackTrace: detalles.stack,
          );
        }

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text('Ha ocurrido un error'),
          ),
          body: Center(child: Text(detalles.toString())),
        );
      };
    },
    (Object error, StackTrace stack) {
      // ignore: avoid_print
      print(error);
      if (kReleaseMode) {
        Sentry.captureException(error, stackTrace: stack);
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

SentryEvent? _sentryBeforeSendOptions(SentryEvent event) {
  if (!kReleaseMode) {
    return null;
  }

  return event;
}
