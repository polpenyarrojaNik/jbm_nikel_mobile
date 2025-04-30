import 'dart:async';
import 'dart:io';

import 'package:country_codes/country_codes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money2/money2.dart';

// import 'package:upgrader/upgrader.dart';

import 'src/core/application/log_service.dart';
import 'src/core/helpers/extension.dart';
import 'src/core/presentation/app.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await CountryCodes.init();

      await dotenv.load();
      Currencies().registerList(currencies);

      //TODO REMOVE this for release builds
      // await Upgrader.clearSavedSettings();

      await SentryFlutter.init(
        (options) {
          options.dsn = dotenv.get('SENTRY_DNS');
          options.environment = kReleaseMode ? 'prod' : 'dev';
          options
            ..considerInAppFramesByDefault = false
            ..addInAppInclude('jbm_nikel_mobile');
          options.beforeSend =
              (event, hint) async => _sentryBeforeSendOptions(event, hint);
          options.tracesSampleRate = 1;
          options.enableAutoPerformanceTracing = false;
        },
        appRunner:
            () => runApp(
              ProviderScope(observers: [RiverpodLogger()], child: const App()),
            ),
      );

      FlutterError.onError = (FlutterErrorDetails detalles) {
        FlutterError.presentError(detalles);
        Sentry.captureException(detalles.exception, stackTrace: detalles.stack);
      };
      ErrorWidget.builder = (FlutterErrorDetails detalles) {
        Sentry.captureException(detalles.exception, stackTrace: detalles.stack);

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
      Sentry.captureException(error, stackTrace: stack);

      exit(1);
    },
  );
}

Future<SentryEvent?> _sentryBeforeSendOptions(
  SentryEvent event,
  Hint hint,
) async {
  if (!kReleaseMode) {
    return null;
  }

  return event;
}
