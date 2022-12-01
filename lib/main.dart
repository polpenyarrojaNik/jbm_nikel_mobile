import 'dart:async';
import 'dart:io';

import 'package:country_codes/country_codes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/core/application/log_service.dart';
import 'src/core/presentation/app.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await CountryCodes.init();

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
      print(error);
      exit(1);
    },
  );
}
