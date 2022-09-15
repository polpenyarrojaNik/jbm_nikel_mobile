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
import '../../features/articulos/infrastructure/articulo_recambio_dto.dart';
import '../../features/articulos/infrastructure/articulo_sustitutivo_dto.dart';
import '../../features/articulos/infrastructure/articulo_precio_tarifa_dto.dart';
import '../../features/cliente/infrastructure/articulo_top_dto.dart';
import '../../features/cliente/infrastructure/cliente_contacto_dto.dart';
import '../../features/cliente/infrastructure/cliente_descuento_dto.dart';
import '../../features/cliente/infrastructure/cliente_direccion_dto.dart';
import '../../features/cliente/infrastructure/cliente_dto.dart';
import '../../features/cliente/infrastructure/cliente_grupo_neto_dto.dart';
import '../../features/cliente/infrastructure/cliente_pago_pendiente_dto.dart';
import '../../features/cliente/infrastructure/cliente_precio_neto_dto.dart';
import '../../features/cliente/infrastructure/cliente_rappel_dto.dart';
import '../../features/cliente/infrastructure/cliente_usuario_dto.dart';
import '../../features/cliente/infrastructure/metodo_cobro_dto.dart';
import '../../features/cliente/infrastructure/plazo_cobro_dto.dart';
import '../../features/estadisticas/infrastructure/estadisticas_ultimos_precios_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_estado_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_linea_dto.dart';
import '../../features/visitas/infrastructure/visita_dto.dart';
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
  ArticuloTopTable,
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
  MetodoDeCobroTable,
  PlazoDeCobroTable,
  PaisTable,
  DivisaTable,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();

    final file = File(join(dbFolder.path, localDatabaseName));
    return NativeDatabase(file);
  });
}
