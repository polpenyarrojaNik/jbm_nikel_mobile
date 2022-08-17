import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/log.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/infrastructure/sales_order_repository.dart';
import 'package:jbm_nikel_mobile/src/inital_db/infrastructure/initial_db_repository.dart';
import 'package:jbm_nikel_mobile/src/sync/infrastructure/sync_repository.dart';
import 'app.dart';

void main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
    await dotenv.load();

    final database = AppDatabase();
    final dio = Dio();

    final container = ProviderContainer(
      overrides: [
        initialDbRepositoryProvider
            .overrideWithValue(InitalDBRepository(database, dio)),
        salesOrderRepositoryProvider
            .overrideWithValue(SalesOrderRepository(database, dio)),
        syncRepositoryProvider.overrideWithValue(SyncRepository(database, dio)),
      ],
      observers: [
        RiverpodLogger(),
      ],
    );

    runApp(UncontrolledProviderScope(container: container, child: const App()));

    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
    };
    ErrorWidget.builder = (FlutterErrorDetails details) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('An error occurred'),
        ),
        body: Center(child: Text(details.toString())),
      );
    };
  }, (Object error, StackTrace stack) {
    log.severe(error, stack);
  });
}
