import 'dart:io';
import 'dart:isolate';

import 'package:drift/drift.dart';
import 'package:drift/isolate.dart';
import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_datetime_dto.dart';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../features/pedido_venta/infrastructure/pedido_venta_linea_local_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_local_dto.dart';
import '../../features/visitas/infrastructure/visita_local_dto.dart';
import '../domain/isolate_request.dart';

part 'local_database.g.dart';

SendPort? isolateLocalDatabaseConnectPort;

final appLocalDatabaseProvider = Provider<LocalAppDatabase>(
  (ref) {
    DatabaseConnection connection = DatabaseConnection.delayed(() async {
      late DriftIsolate isolate;
      if (isolateLocalDatabaseConnectPort != null) {
        isolate =
            DriftIsolate.fromConnectPort(isolateLocalDatabaseConnectPort!);
      } else {
        isolate = await _createDriftIsolate();

        isolateLocalDatabaseConnectPort = isolate.connectPort;
      }
      return await isolate.connect();
    }());
    final database = LocalAppDatabase.connect(connection);
    ref.onDispose(
      () => database.close(),
    );
    return database;
  },
);
const localDatabaseName = 'local_jbm.sqlite';

@DriftDatabase(tables: [
  VisitaLocalTable,
  PedidoVentaLineaLocalTable,
  PedidoVentaLocalTable,
  SyncDateTimeTable,
])
class LocalAppDatabase extends _$LocalAppDatabase {
  final bool test;

  LocalAppDatabase.connect(super.connection)
      : test = false,
        super.connect();
  LocalAppDatabase.test()
      : test = true,
        super(NativeDatabase.memory());
  @override
  int get schemaVersion => 1;
}

Future<DriftIsolate> _createDriftIsolate() async {
  final dir = await getApplicationDocumentsDirectory();
  final path = p.join(dir.path, localDatabaseName);
  final receivePort = ReceivePort();

  await Isolate.spawn(
      _startBackground, IsolateRequest(receivePort.sendPort, path),
      debugName: 'LOCAL DB Isolate');

  // ReceivePort will receive the DriftIsolate from background isolate, send by _startBackground
  return await receivePort.first as DriftIsolate;
}

void _startBackground(IsolateRequest request) {
  // at this moment this process is already on another Isolate. To create a database from file the path should be
  // passed from request
  final executor = NativeDatabase(File(request.targetPath));
  // this is already a background isolate, so there is no need to create another, like in DriftIsolate.spawn() method.
  // Using DriftIsolate.inCurrent() allows to run executor on current thread
  final driftIsolate = DriftIsolate.inCurrent(
    () => DatabaseConnection(executor),
    killIsolateWhenDone: true,
  );
  // send back created DriftIsolate to main thread through SendPort
  request.sendDriftIsolate.send(driftIsolate);
}
