import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/divisa_dto.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/pais_dto.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/subfamilia_dto.dart';
import 'package:jbm_nikel_mobile/src/features/estadisticas/infrastructure/estadisticas_venta_cliente_usuario_dto.dart';
import 'package:path/path.dart';
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
import '../../features/pedido_venta/infrastructure/pedido_venta_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_estado_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_linea_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_linea_local_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_local_dto.dart';
import '../../features/visitas/infrastructure/visita_dto.dart';
import '../../features/visitas/infrastructure/visita_local_dto.dart';
import 'familia_dto.dart';

part 'database.g.dart';

final appDatabaseProvider = Provider<AppDatabase>(
  (ref) => AppDatabase(),
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
  DescuentoGeneralTable,
])
class AppDatabase extends _$AppDatabase {
  final String? databaseFile;
  final bool test;
  AppDatabase({this.databaseFile, this.test = false})
      : super(test ? NativeDatabase.memory() : _openConnection(databaseFile));

  @override
  int get schemaVersion => 2;
}

LazyDatabase _openConnection(String? databaseFile) {
  return LazyDatabase(() async {
    late File file;
    if (databaseFile == null) {
      final dbFolder = await getApplicationDocumentsDirectory();

      file = File(join(dbFolder.path, localDatabaseName));
    } else {
      file = File(databaseFile);
    }

    return NativeDatabase(file);
  });
}
