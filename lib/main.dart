import 'dart:async';

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

    // final database = AppDatabase();
    // final dio = Dio();
    // const secureStorage = FlutterSecureStorage();
    // final authRepository = AuthRepository(dio, secureStorage);

    // final container = ProviderContainer(
    //   overrides: [
    //     initialDbRepositoryProvider
    //         .overrideWithValue(InitalDBRepository(database, dio)),
    //     authRepositoryProvider.overrideWithValue(authRepository),
    //     syncRepositoryProvider
    //         .overrideWithValue(SyncRepository(database, dio, authRepository)),
    //     pedidoVentaRepositoryProvider.overrideWithValue(
    //         PedidoVentaRepository(database, dio, authRepository)),
    //     clienteRepositoryProvider
    //         .overrideWithValue(ClienteRepository(database, dio)),
    //     articuloRepositoryProvider
    //         .overrideWithValue(ArticuloRepository(database, dio)),
    //     visitaRepositoryProvider
    //         .overrideWithValue(VisitaRepository(database, dio)),
    //     articuloTopRepositoryProvider
    //         .overrideWithValue(ArticuloTopRepository(database)),
    //   ],
    //   observers: [
    //     RiverpodLogger(),
    //   ],
    // );

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
          title: const Text('An error occurred'),
        ),
        body: Center(child: Text(detalles.toString())),
      );
    };
  }, (Object error, StackTrace stack) {
    log.severe(error, stack);
  });
}
