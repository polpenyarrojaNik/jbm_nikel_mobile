import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/core/application/log_service.dart';
import 'src/core/presentation/app.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await dotenv.load();

      runApp(
        ProviderScope(
          observers: [RiverpodLogger()],
          child: App(),
        ),
      );

      FlutterError.onError = (FlutterErrorDetails detalles) {
        FlutterError.presentError(detalles);
      };
      ErrorWidget.builder = (FlutterErrorDetails detalles) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text('Ha ocurrido un error'),
          ),
          body: Center(
            child: Text(
              detalles.toString(),
            ),
          ),
        );
      };
    },
    (Object error, StackTrace stack) {
      log.e(error, stack);
      exit(1);
    },
  );
}
