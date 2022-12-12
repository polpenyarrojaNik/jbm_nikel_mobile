import 'dart:io';
import 'dart:isolate';

import 'package:drift/drift.dart';
import 'package:drift/isolate.dart';
import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/divisa_dto.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/pais_dto.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/subfamilia_dto.dart';
import 'package:jbm_nikel_mobile/src/features/estadisticas/infrastructure/estadisticas_venta_cliente_usuario_dto.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../features/articulos/infrastructure/articulo_componente_dto.dart';
import '../../features/articulos/infrastructure/articulo_dto.dart';
import '../../features/articulos/infrastructure/articulo_empresa_iva_dto.dart';
import '../../features/articulos/infrastructure/articulo_grupo_neto_dto.dart';
import '../../features/articulos/infrastructure/articulo_precio_tarifa_dto.dart';
import '../../features/articulos/infrastructure/articulo_recambio_dto.dart';
import '../../features/articulos/infrastructure/articulo_sustitutivo_dto.dart';
import '../../features/articulos/infrastructure/descuento_general_dto.dart';
import '../../features/cliente/infrastructure/cliente_contacto_dto.dart';
import '../../features/cliente/infrastructure/cliente_descuento_dto.dart';
import '../../features/cliente/infrastructure/cliente_direccion_dto.dart';
import '../../features/cliente/infrastructure/cliente_dto.dart';
import '../../features/cliente/infrastructure/cliente_estado_potencial_dto.dart';
import '../../features/cliente/infrastructure/cliente_grupo_neto_dto.dart';
import '../../features/cliente/infrastructure/cliente_pago_pendiente_dto.dart';
import '../../features/cliente/infrastructure/cliente_precio_neto_dto.dart';
import '../../features/cliente/infrastructure/cliente_rappel_dto.dart';
import '../../features/cliente/infrastructure/cliente_tipo_potencial_dto.dart';
import '../../features/cliente/infrastructure/cliente_usuario_dto.dart';
import '../../features/cliente/infrastructure/metodo_cobro_dto.dart';
import '../../features/cliente/infrastructure/plazo_cobro_dto.dart';
import '../../features/estadisticas/infrastructure/estadisticas_articulos_top_dto.dart';
import '../../features/estadisticas/infrastructure/estadisticas_ultimos_precios_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_albaran_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_estado_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_linea_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_linea_local_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_local_dto.dart';
import '../../features/visitas/infrastructure/visita_dto.dart';
import '../../features/visitas/infrastructure/visita_local_dto.dart';

import 'familia_dto.dart';
import 'log_dto.dart';

part 'database.g.dart';

SendPort? isolateConnectPort;

final appDatabaseProvider = Provider<AppDatabase>(
  (ref) {
    DatabaseConnection connection = DatabaseConnection.delayed(() async {
      late DriftIsolate isolate;
      if (isolateConnectPort != null) {
        isolate = DriftIsolate.fromConnectPort(isolateConnectPort!);
      } else {
        isolate = await _createDriftIsolate();

        isolateConnectPort = isolate.connectPort;
      }
      return await isolate.connect();
    }());
    final database = AppDatabase.connect(connection);
    ref.onDispose(
      () => database.close(),
    );
    return database;
  },
);
const localDatabaseName = 'jbm.sqlite';

@DriftDatabase(tables: [
  PedidoVentaTable,
  PedidoVentaEstadoTable,
  PedidoVentaLineaTable,
  ClienteTable,
  ClienteUsuarioTable,
  ClienteGrupoNetoTable,
  ClienteDescuentoTable,
  ClienteContactoTable,
  ClienteDireccionTable,
  ClientePagoPendienteTable,
  ClientePrecioNetoTable,
  ClienteRappelTable,
  ClienteEstadoPotencialTable,
  ClienteTipoPotencialTable,
  EstadisticasArticulosTopTable,
  ArticuloTable,
  ArticuloComponenteTable,
  ArticuloEmpresaIvaTable,
  ArticuloRecambioTable,
  ArticuloSustitutivoTable,
  ArticuloPrecioTarifaTable,
  ArticuloGrupoNetoTable,
  EstadisticasClienteUsuarioVentasTable,
  EstadisticasUltimosPreciosTable,
  FamiliaTable,
  SubfamiliaTable,
  VisitaTable,
  VisitaLocalTable,
  MetodoDeCobroTable,
  PlazoDeCobroTable,
  PaisTable,
  DivisaTable,
  PedidoVentaLineaLocalTable,
  PedidoVentaLocalTable,
  PedidoAlbaranTable,
  DescuentoGeneralTable,
  LogTable,
])
class AppDatabase extends _$AppDatabase {
  final bool test;

  AppDatabase.connect(super.connection)
      : test = false,
        super.connect();
  AppDatabase.test()
      : test = true,
        super(NativeDatabase.memory());
  @override
  int get schemaVersion => 15;
}

Future<DriftIsolate> _createDriftIsolate() async {
  final dir = await getApplicationDocumentsDirectory();
  final path = p.join(dir.path, localDatabaseName);
  final receivePort = ReceivePort();

  await Isolate.spawn(
      _startBackground, IsolateRequest(receivePort.sendPort, path),
      debugName: 'DB Isolate');

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

class IsolateRequest {
  final SendPort sendDriftIsolate;
  final String targetPath;

  IsolateRequest(this.sendDriftIsolate, this.targetPath);
}
