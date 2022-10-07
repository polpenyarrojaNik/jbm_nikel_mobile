import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/log.dart';
import 'package:logging/logging.dart';

import 'src/core/presentation/app.dart';

void main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    Logger.root.level = Level.ALL; // defaults to Level.INFO
    Logger.root.onRecord.listen((record) =>
        print('${record.level.name}: ${record.time}: ${record.message}'));

    await dotenv.load();

    runApp(ProviderScope(
      observers: [
        RiverpodLogger(),
      ],
      child: App(),
    ));

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
  }, (Object error, StackTrace stack) {
    log.severe(error, stack);
    exit(1);
  });
}
