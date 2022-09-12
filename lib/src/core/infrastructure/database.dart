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
import '../../features/articulos/infrastructure/articulo_tarifa_precio_dto.dart';
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
  FechaUltimaSyncTable,
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
  ArticuloTarifaPrecioTable,
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

class FechaUltimaSyncTable extends Table {
  @override
  String get tableName => 'FECHA_ULTIMA_SYNC';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('ID')();
  TextColumn get ultimaSyncDivisa =>
      text().nullable().named('ULTIMA_SYNC_DIVISA')();
  TextColumn get ultimaSyncPais =>
      text().nullable().named('ULTIMA_SYNC_PAIS')();
  TextColumn get ultimaSyncMetodoDeCobro =>
      text().nullable().named('ULTIMA_SYNC_METODO_COBRO')();
  TextColumn get ultimaSyncPlazoDeCobro =>
      text().nullable().named('ULTIMA_SYNC_PLAZO_COBRO')();
  TextColumn get ultimaSyncCliente =>
      text().nullable().named('ULTIMA_SYNC_CLIENTE')();
  TextColumn get ultimaSyncClienteUsuario =>
      text().nullable().named('ULTIMA_SYNC_CLIENTE_USUARIO')();
  TextColumn get ultimaSyncClienteContacto =>
      text().nullable().named('ULTIMA_SYNC_CLIENTE_CONTACTO')();
  TextColumn get ultimaSyncClienteDescuento =>
      text().nullable().named('ULTIMA_SYNC_CLIENTE_DESCUENTO')();
  TextColumn get ultimaSyncClienteDireccion =>
      text().nullable().named('ULTIMA_SYNC_CLIENTE_DIRECCION')();
  TextColumn get ultimaSyncClientePrecioNeto =>
      text().nullable().named('ULTIMA_SYNC_CLIENTE_PRECIO_NETO')();
  TextColumn get ultimaSyncClienteGrupoNeto =>
      text().nullable().named('ULTIMA_SYNC_CLIENTE_GRUPO_NETO')();
  TextColumn get ultimaSyncClientePagoPendiente =>
      text().nullable().named('ULTIMA_SYNC_CLIENTE_PAGO_PENDIENTE')();
  TextColumn get ultimaSyncClienteRappels =>
      text().nullable().named('ULTIMA_SYNC_CLIENTE_RAPPELS')();
  TextColumn get ultimaSyncArticulosTop =>
      text().nullable().named('ULTIMA_SYNC_ARTICULOS_TOP')();
  TextColumn get ultimaSyncPedidoVenta =>
      text().nullable().named('ULTIMA_SYNC_PEDIDO_VENTA')();
  TextColumn get ultimaSyncVisita =>
      text().nullable().named('ULTIMA_SYNC_VISITA')();
  TextColumn get ultimaSyncPedidoVentaLinea =>
      text().nullable().named('ULTIMA_SYNC_PEDIDO_VENTA_LINEA')();
  TextColumn get ultimaSyncPedidoVentaEstado =>
      text().nullable().named('ULTIMA_SYNC_PEDIDO_VENTA_ESTADO')();
  TextColumn get ultimaSyncArticulo =>
      text().nullable().named('ULTIMA_SYNC_ARTICULO')();
  TextColumn get ultimaSyncFamilia =>
      text().nullable().named('ULTIMA_SYNC_FAMILIA')();
  TextColumn get ultimaSyncSubfamilia =>
      text().nullable().named('ULTIMA_SYNC_SUBFAMILIA')();
  TextColumn get ultimaSyncArticuloGrupoNeto =>
      text().nullable().named('ULTIMA_SYNC_ARTICULO_GRUPO_NETO')();
  TextColumn get ultimaSyncArticuloTarifaPrecio =>
      text().nullable().named('ULTIMA_SYNC_ARTICULO_TARIFA_PRECIO')();
  TextColumn get ultimaSyncArticuloComponente =>
      text().nullable().named('ULTIMA_SYNC_ARTICULO_COMPONENTE')();
  TextColumn get ultimaSyncArticuloSustitutivo =>
      text().nullable().named('ULTIMA_SYNC_ARTICULO_SUSTITUTIVO')();
  TextColumn get ultimaSyncArticuloRecambio =>
      text().nullable().named('ULTIMA_SYNC_ARTICULO_RECAMBIO')();
  TextColumn get ultimaSyncArticuloEmpresaIva =>
      text().nullable().named('ULTIMA_SYNC_ARTICULO_EMPRESA_IVA')();
  TextColumn get ultimaSyncEstadisticasClienteUsuarioVentas => text()
      .nullable()
      .named('ULTIMA_SYNC_ESTADISTICAS_VENTA_CLIENTE_USUARIO')();
  TextColumn get ultimaSyncEstadisticasUltimosPrecios =>
      text().nullable().named('ULTIMA_SYNC_ESTADISTICAS_ULTIMOS_PRECIOS')();
}
