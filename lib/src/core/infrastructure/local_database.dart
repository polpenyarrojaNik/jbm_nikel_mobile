import 'dart:io';
import 'dart:isolate';

import 'package:drift/drift.dart';
import 'package:drift/isolate.dart';
import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/catalogos/infrastructure/catalogo_dto.dart';
import 'log_dto.dart';
import 'sync_datetime_dto.dart';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../features/catalogos/infrastructure/catalogo_orden_dto.dart';
import '../../features/cliente/infrastructure/cliente_contacto_imp_dto.dart';
import '../../features/cliente/infrastructure/cliente_direccion_imp_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_linea_local_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_local_dto.dart';
import '../../features/visitas/infrastructure/visita_local_dto.dart';
import '../domain/isolate_request.dart';

part 'local_database.g.dart';

SendPort? isolateLocalDatabaseConnectPort;

final appLocalDatabaseProvider = Provider<LocalAppDatabase>(
  (ref) {
    final connection = DatabaseConnection.delayed(() async {
      late DriftIsolate isolate;
      if (isolateLocalDatabaseConnectPort != null) {
        isolate =
            DriftIsolate.fromConnectPort(isolateLocalDatabaseConnectPort!);
      } else {
        isolate = await _createDriftIsolate();

        isolateLocalDatabaseConnectPort = isolate.connectPort;
      }
      return isolate.connect();
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
  LogTable,
  CatalogoFavoritoTable,
  ClienteContactoImpTable,
  ClienteDireccionImpTable,
  CatalogoOrdenTable,
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
  int get schemaVersion => 15;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onUpgrade: ((m, from, to) async {
        if (from == 1) {
          await m.createTable(clienteContactoImpTable);
          await m.createTable(clienteDireccionImpTable);
        } else if (from == 2) {
          await m.deleteTable(pedidoVentaLocalTable.tableName);
          await m.deleteTable(pedidoVentaLineaLocalTable.tableName);
          await m.deleteTable(visitaLocalTable.tableName);
          await m.createTable(pedidoVentaLocalTable);
          await m.createTable(pedidoVentaLineaLocalTable);
          await m.createTable(visitaLocalTable);
        } else if (from == 3) {
          await m.deleteTable(pedidoVentaLocalTable.tableName);
          await m.deleteTable(pedidoVentaLineaLocalTable.tableName);
          await m.deleteTable(visitaLocalTable.tableName);
          await m.createTable(pedidoVentaLocalTable);
          await m.createTable(pedidoVentaLineaLocalTable);
          await m.createTable(visitaLocalTable);
        } else if (from == 4) {
          await m.deleteTable(logTable.tableName);
          await m.createTable(logTable);
        } else if (from == 5) {
          await m.deleteTable(pedidoVentaLineaLocalTable.tableName);
          await m.createTable(pedidoVentaLineaLocalTable);
        } else if (to == 7) {
          await m.alterTable(
            TableMigration(
              pedidoVentaLineaLocalTable,
              newColumns: [
                pedidoVentaLineaLocalTable.pedidoLineaIdComponente,
              ],
            ),
          );
        }
        if (from < 8) {
          await m.alterTable(
            TableMigration(visitaLocalTable, newColumns: [
              visitaLocalTable.ofertaRealizada,
              visitaLocalTable.interesCliente,
              visitaLocalTable.pedidoRealizado,
              visitaLocalTable.codigoMotivoNoInteres,
              visitaLocalTable.codigoMotivoNoPedido,
              visitaLocalTable.codigoSector,
              visitaLocalTable.codigoCompetencia,
              visitaLocalTable.almacenPropio,
              visitaLocalTable.capacidad,
              visitaLocalTable.frecuenciaPedido,
            ], columnTransformer: {
              visitaLocalTable.ofertaRealizada: const Constant('N'),
              visitaLocalTable.interesCliente: const Constant('N'),
              visitaLocalTable.pedidoRealizado: const Constant('N'),
              visitaLocalTable.almacenPropio: const Constant('N'),
              visitaLocalTable.capacidad: const Constant('M'),
              visitaLocalTable.frecuenciaPedido: const Constant('M'),
            }),
          );
        }
        if (from < 9) {
          await m.alterTable(
            TableMigration(visitaLocalTable, newColumns: [
              visitaLocalTable.ofertaRealizada,
              visitaLocalTable.interesCliente,
              visitaLocalTable.pedidoRealizado,
              visitaLocalTable.codigoMotivoNoInteres,
              visitaLocalTable.codigoMotivoNoPedido,
              visitaLocalTable.codigoSector,
              visitaLocalTable.codigoCompetencia,
              visitaLocalTable.almacenPropio,
              visitaLocalTable.capacidad,
              visitaLocalTable.frecuenciaPedido,
            ], columnTransformer: {
              visitaLocalTable.ofertaRealizada: const Constant('N'),
              visitaLocalTable.interesCliente: const Constant('N'),
              visitaLocalTable.pedidoRealizado: const Constant('N'),
              visitaLocalTable.almacenPropio: const Constant('N'),
              visitaLocalTable.capacidad: const Constant('M'),
              visitaLocalTable.frecuenciaPedido: const Constant('M'),
            }),
          );
          await m.alterTable(
            TableMigration(
              clienteDireccionImpTable,
              newColumns: [
                clienteDireccionImpTable.telefono,
              ],
            ),
          );
        }
        if (from < 11) {
          await m.alterTable(
            TableMigration(visitaLocalTable, newColumns: [
              visitaLocalTable.ofertaRealizada,
              visitaLocalTable.interesCliente,
              visitaLocalTable.pedidoRealizado,
              visitaLocalTable.codigoMotivoNoInteres,
              visitaLocalTable.codigoMotivoNoPedido,
              visitaLocalTable.codigoSector,
              visitaLocalTable.codigoCompetencia,
              visitaLocalTable.almacenPropio,
              visitaLocalTable.capacidad,
              visitaLocalTable.frecuenciaPedido,
            ], columnTransformer: {
              visitaLocalTable.ofertaRealizada: const Constant('N'),
              visitaLocalTable.interesCliente: const Constant('N'),
              visitaLocalTable.pedidoRealizado: const Constant('N'),
              visitaLocalTable.almacenPropio: const Constant('N'),
              visitaLocalTable.capacidad: const Constant('M'),
              visitaLocalTable.frecuenciaPedido: const Constant('M'),
            }),
          );
          await m.alterTable(
            TableMigration(
              clienteDireccionImpTable,
              newColumns: [
                clienteDireccionImpTable.telefono,
              ],
            ),
          );
          await m.createTable(catalogoOrdenTable);
        }
        if (from < 12) {
          // await m.alterTable(
          //   TableMigration(
          //     catalogoFavoritoTable,
          //     newColumns: [
          //       catalogoFavoritoTable.nombreArchivo,
          //     ],
          //   ),
          // );
        }
        if (from < 13) {
          await m.deleteTable(catalogoFavoritoTable.tableName);
          await m.createTable(catalogoFavoritoTable);
        }
        if (from < 14) {
          await m.deleteTable(catalogoFavoritoTable.tableName);
          await m.createTable(catalogoFavoritoTable);
        }
        if (from < 15) {
          await m.deleteTable(catalogoOrdenTable.tableName);
          await m.createTable(catalogoOrdenTable);
          await m.deleteTable(visitaLocalTable.tableName);
          await m.createTable(visitaLocalTable);
          await m.deleteTable(clienteDireccionImpTable.tableName);
          await m.createTable(clienteDireccionImpTable);
          await m.deleteTable(catalogoFavoritoTable.tableName);
          await m.createTable(catalogoFavoritoTable);
        }
      }),
    );
  }
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
