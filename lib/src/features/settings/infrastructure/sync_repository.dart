import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/exceptions/app_exception.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/dio_extension.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/infrastructure/pedido_venta_dto.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/helpers/formatters.dart';
import '../../../core/infrastructure/jbm_headers.dart';
import '../../../core/infrastructure/pais_dto.dart';
import '../../../core/infrastructure/divisa_dto.dart';
import '../../../core/infrastructure/familia_dto.dart';
import '../../../core/infrastructure/log.dart';
import '../../../core/infrastructure/remote_response.dart';
import '../../../core/infrastructure/subfamilia_dto.dart';

import '../../articulos/infrastructure/articulo_componente_dto.dart';
import '../../articulos/infrastructure/articulo_dto.dart';
import '../../articulos/infrastructure/articulo_empresa_iva_dto.dart';
import '../../articulos/infrastructure/articulo_grupo_neto_dto.dart';
import '../../articulos/infrastructure/articulo_tarifa_precio_dto.dart';
import '../../articulos/infrastructure/articulo_recambio_dto.dart';
import '../../articulos/infrastructure/articulo_sustitutivo_dto.dart';
import '../../auth/infrastructure/auth_repository.dart';
import '../../cliente/infrastructure/articulo_top_dto.dart';
import '../../cliente/infrastructure/cliente_direccion_dto.dart';
import '../../cliente/infrastructure/cliente_contacto_dto.dart';
import '../../cliente/infrastructure/cliente_descuento_dto.dart';
import '../../cliente/infrastructure/cliente_dto.dart';
import '../../cliente/infrastructure/cliente_grupo_neto_dto.dart';
import '../../cliente/infrastructure/cliente_pago_pendiente_dto.dart';
import '../../cliente/infrastructure/cliente_precio_neto_dto.dart';
import '../../cliente/infrastructure/cliente_rappel_dto.dart';
import '../../cliente/infrastructure/cliente_usuario_dto.dart';
import '../../cliente/infrastructure/metodo_cobro_dto.dart';
import '../../cliente/infrastructure/plazo_cobro_dto.dart';
import '../../estadisticas/infrastructure/estadisticas_ultimos_precios_dto.dart';
import '../../estadisticas/infrastructure/estadisticas_venta_cliente_usuario_dto.dart';
import '../../pedido_venta/infrastructure/pedido_venta_estado_dto.dart';
import '../../pedido_venta/infrastructure/pedido_venta_linea_dto.dart';
import '../../visitas/infrastructure/visita_dto.dart';

final syncRepositoryProvider = Provider.autoDispose<SyncRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

class SyncRepository {
  AppDatabase db;
  Dio dio;
  AuthRepository authRepository;

  SyncRepository(this.db, this.dio, this.authRepository);

  Future<void> syncPedidoVenta() async {
    try {
      await syncTable(
        fromJson: (e) => PedidoVentaDTO.fromJson(e),
        path: '/pedidos',
        dbTable: db.pedidoVentaTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncPedidoVenta,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncPedidoVentaLineas() async {
    try {
      await syncTable(
        fromJson: (e) => PedidoVentaLineaDTO.fromJson(e),
        path: '/pedidos/detalle',
        dbTable: db.pedidoVentaLineaTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncPedidoVentaLinea,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncPedidoVentaEstado() async {
    try {
      await syncTable(
        fromJson: (e) => PedidoVentaEstadoDTO.fromJson(e),
        path: '/pedidos/estados',
        dbTable: db.pedidoVentaEstadoTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncPedidoVentaEstado,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncCliente() async {
    try {
      await syncTable(
        fromJson: (e) => ClienteDTO.fromJson(e),
        path: '/clientes',
        dbTable: db.clienteTable,
        ultimaSyncDateTableColumn: db.fechaUltimaSyncTable.ultimaSyncCliente,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClienteUsuario() async {
    try {
      await syncTable(
        fromJson: (e) => ClienteUsuarioDTO.fromJson(e),
        path: '/clientes-usuario',
        dbTable: db.clienteUsuarioTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncClienteUsuario,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClienteDireccion() async {
    try {
      await syncTable(
        fromJson: (e) => ClienteDireccionDTO.fromJson(e),
        path: '/clientes/direcciones',
        dbTable: db.clienteDireccionTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncClienteDireccion,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClienteContacto() async {
    try {
      await syncTable(
        fromJson: (e) => ClienteContactoDTO.fromJson(e),
        path: '/clientes/contactoos',
        dbTable: db.clienteContactoTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncClienteContacto,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClienteDescuento() async {
    try {
      await syncTable(
        fromJson: (e) => ClienteDescuentoDTO.fromJson(e),
        path: '/clientes/descuentos',
        dbTable: db.clienteDescuentoTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncClienteDescuento,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClienteGrupoNeto() async {
    try {
      await syncTable(
        fromJson: (e) => ClienteGrupoNetoDTO.fromJson(e),
        path: '/clientes/grupos-netos',
        dbTable: db.clienteGrupoNetoTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncClienteGrupoNeto,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClientePrecioNeto() async {
    try {
      await syncTable(
        fromJson: (e) => ClientePrecioNetoDTO.fromJson(e),
        path: '/clientes/precios-netos',
        dbTable: db.clientePrecioNetoTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncClientePrecioNeto,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClientePagoPendiente() async {
    try {
      await syncTable(
        fromJson: (e) => ClientePagoPendienteDTO.fromJson(e),
        path: '/clientes/pagos-pendientes',
        dbTable: db.clientePagoPendienteTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncClientePagoPendiente,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClienteRappels() async {
    try {
      await syncTable(
        fromJson: (e) => ClienteRappelDTO.fromJson(e),
        path: '/clientes/rappels',
        dbTable: db.clienteRappelTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncClienteRappels,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticulosTop() async {
    try {
      await syncTable(
        fromJson: (e) => ArticuloTopDTO.fromJson(e),
        path: '/clientes/articulos-top',
        dbTable: db.articuloTopTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncArticulosTop,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticulo() async {
    try {
      await syncTable(
        fromJson: (e) => ArticuloDTO.fromJson(e),
        path: '/articulos',
        dbTable: db.articuloTable,
        ultimaSyncDateTableColumn: db.fechaUltimaSyncTable.ultimaSyncArticulo,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloEmpresaIva() async {
    try {
      await syncTable(
        fromJson: (e) => ArticuloEmpresaIvaDTO.fromJson(e),
        path: '/articulos/empresa-iva',
        dbTable: db.articuloEmpresaIvaTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncArticuloEmpresaIva,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloComponentes() async {
    try {
      await syncTable(
        fromJson: (e) => ArticuloComponenteDTO.fromJson(e),
        path: '/articulos/componentes',
        dbTable: db.articuloComponenteTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncArticuloComponente,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloGrupoNeto() async {
    try {
      await syncTable(
        fromJson: (e) => ArticuloGrupoNetoDTO.fromJson(e),
        path: '/articulos/grupos-netos',
        dbTable: db.articuloGrupoNetoTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncArticuloGrupoNeto,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloTarifaPrecio() async {
    try {
      await syncTable(
        fromJson: (e) => ArticuloTarifaPrecioDTO.fromJson(e),
        path: '/articulos/precios-tarifa',
        dbTable: db.articuloTarifaPrecioTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncArticuloTarifaPrecio,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloRecambio() async {
    try {
      await syncTable(
        fromJson: (e) => ArticuloRecambioDTO.fromJson(e),
        path: '/articulos/recambios',
        dbTable: db.articuloRecambioTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncArticuloRecambio,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloSustitutivo() async {
    try {
      await syncTable(
        fromJson: (e) => ArticuloSustitutivoDTO.fromJson(e),
        path: '/articulos/sustitutivos',
        dbTable: db.articuloSustitutivoTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncArticuloSustitutivo,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncEstadisticasClienteUsuarioVentas() async {
    try {
      await syncTable(
        fromJson: (e) => EstadisticasVentaClienteUsuarioDTO.fromJson(e),
        path: '/estadisticas/ventas-cliente-usuario',
        dbTable: db.estadisticasClienteUsuarioVentasTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncEstadisticasClienteUsuarioVentas,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncEstadisticasUltimosPrecios() async {
    try {
      await syncTable(
        fromJson: (e) => EstadisticasUltimosPreciosDTO.fromJson(e),
        path: '/estadisticas/ultimos-precios-cliente-articulo',
        dbTable: db.estadisticasUltimosPreciosTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncEstadisticasUltimosPrecios,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncVisita() async {
    try {
      await syncTable(
          fromJson: (e) => VisitaDTO.fromJson(e),
          path: '/visitas',
          dbTable: db.visitaTable,
          ultimaSyncDateTableColumn: db.fechaUltimaSyncTable.ultimaSyncVisita);
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncPais() async {
    try {
      await syncTable(
        fromJson: (e) => PaisDTO.fromJson(e),
        path: '/paises',
        dbTable: db.paisTable,
        ultimaSyncDateTableColumn: db.fechaUltimaSyncTable.ultimaSyncPais,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncDivisa() async {
    try {
      await syncTable(
        fromJson: (e) => DivisaDTO.fromJson(e),
        path: '/divisa',
        dbTable: db.divisaTable,
        ultimaSyncDateTableColumn: db.fechaUltimaSyncTable.ultimaSyncDivisa,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncPlazoDeCobro() async {
    try {
      await syncTable(
        fromJson: (e) => PlazoDeCobroDTO.fromJson(e),
        path: '/plazos-cobro',
        dbTable: db.plazoDeCobroTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncPlazoDeCobro,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncMetodoDeCobros() async {
    try {
      await syncTable(
        fromJson: (e) => MetodoDeCobroDTO.fromJson(e),
        path: '/metodos-cobro',
        dbTable: db.metodoDeCobroTable,
        ultimaSyncDateTableColumn:
            db.fechaUltimaSyncTable.ultimaSyncMetodoDeCobro,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncFamilia() async {
    try {
      await syncTable(
        fromJson: (e) => FamiliaDTO.fromJson(e),
        path: '/articulos/familia',
        dbTable: db.familiaTable,
        ultimaSyncDateTableColumn: db.fechaUltimaSyncTable.ultimaSyncFamilia,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncSubfamilia() async {
    try {
      await syncTable(
        fromJson: (e) => SubfamiliaDTO.fromJson(e),
        path: '/articulos/subfamilia',
        dbTable: db.subfamiliaTable,
        ultimaSyncDateTableColumn: db.fechaUltimaSyncTable.ultimaSyncSubfamilia,
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncTable(
      {required String path,
      required TableInfo<Table, dynamic> dbTable,
      required Function(Map<String, dynamic> e) fromJson,
      required GeneratedColumn<String> ultimaSyncDateTableColumn}) async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final usuario = await authRepository.getSignedInUsuario();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: usuario!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final ultimaFechaSync =
          await getUltimaFechaSync(columnName: ultimaSyncDateTableColumn.name);

      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            ultimaFechaSync: ultimaFechaSync,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/$path',
            query: query,
            provisionalToken: usuario.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final tableValueDTOList = data.map((e) => fromJson(e)).toList();
            for (var i = 0; i < tableValueDTOList.length; i++) {
              final tableValue = tableValueDTOList[i];

              if (tableValue.deleted == 'S') {
                await deleteTableValue(table: dbTable, dto: tableValue);
              } else {
                await upsertTable(table: dbTable, dto: tableValue);
              }
            }
            print('$path Page: 1/$maxPage');
            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }

      final fechaUltimaSyncValue = createFechaUltimaSyncValue(
          columnName: ultimaSyncDateTableColumn.name, date: dbSysdateStr);

      await (db.update(db.fechaUltimaSyncTable)..where((t) => t.id.equals('1')))
          .write(fechaUltimaSyncValue);
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> upsertTable(
      {required TableInfo<Table, dynamic> table, required dynamic dto}) async {
    try {
      await db.into(table).insertOnConflictUpdate(dto);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteTableValue(
      {required TableInfo<Table, dynamic> table, required dynamic dto}) async {
    try {
      await db.delete(table).delete(dto);
    } catch (e) {
      rethrow;
    }
  }

  Future<RemoteResponse<List<Map<String, dynamic>>>> _remoteSyncData({
    required String path,
    Map<String, String>? query,
    required String provisionalToken,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
  }) async {
    try {
      final response = await dio.getUri(
        Uri.http(
          dotenv.get('URL', fallback: 'localhost:3001'),
          path,
          query,
        ),
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );

      if (response.statusCode == 200) {
        final convertedDate = jsonDataSelector(response.data)
            .map((pedidoVentaMap) => pedidoVentaMap as Map<String, dynamic>)
            .toList();
        final headers = JbmHeaders.parse(response);

        return RemoteResponse.withNewData(
          convertedDate,
          maxPage: headers.maxPage ?? 1,
          totalRows: headers.totalRows ?? 0,
        );
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.toString());
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400,
            (e.response?.data is Map)
                ? e.response?.data['error']['detail'] ??
                    e.response?.data['message']
                : e.response?.statusMessage);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<String> _getRemoteDbSysDate({
    required String provisionalToken,
    required dynamic Function(dynamic json) jsonDataSelector,
  }) async {
    try {
      final response = await dio.getUri(
          Uri.http(
            dotenv.get('URL', fallback: 'localhost:3001'),
            '/api/v1/sync/db-datetime',
          ),
          options: Options(
            headers: {'authorization': 'Bearer $provisionalToken'},
          ));
      log.info(
          '${(this).runtimeType}.getDbSysdate - Received response: ${response.statusCode}');

      if (response.statusCode == 200) {
        final convertedDate = jsonDataSelector(response.data);
        print('Date Str $convertedDate');

        final date = DateTime.parse(convertedDate);
        print('Date ${date.toIso8601String()}');

        return convertedDate;
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.toString());
      }
    } on DioError catch (e) {
      if (e.response != null) {
        throw AppException.restApiFailure(
          e.response?.statusCode ?? 400,
          e.response?.statusMessage ?? '',
        );
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Map<String, String> createSyncQueryPagination(
      {required int page,
      required String dbSysdateStr,
      required String? ultimaFechaSync,
      required int? totalRows}) {
    final query = {'page': '$page', 'pageSize': '7000', 'dateTo': dbSysdateStr};

    if (ultimaFechaSync != null) {
      query.addAll({'dateFrom': ultimaFechaSync});
    }

    if (totalRows != null) {
      query.addAll({'totalRows': '$totalRows'});
    }
    return query;
  }

  Insertable<FechaUltimaSyncTableData> createFechaUltimaSyncValue(
      {required String columnName, required String date}) {
    const value = FechaUltimaSyncTableCompanion(id: Value('1'));

    switch (columnName) {
      case 'ULTIMA_SYNC_DIVISA':
        return value.copyWith(ultimaSyncDivisa: Value(date));
      case 'ULTIMA_SYNC_PAIS':
        return value.copyWith(ultimaSyncPais: Value(date));
      case 'ULTIMA_SYNC_METODO_COBRO':
        return value.copyWith(ultimaSyncMetodoDeCobro: Value(date));
      case 'ULTIMA_SYNC_PLAZO_COBRO':
        return value.copyWith(ultimaSyncPlazoDeCobro: Value(date));
      case 'ULTIMA_SYNC_CLIENTE':
        return value.copyWith(ultimaSyncCliente: Value(date));
      case 'ULTIMA_SYNC_CLIENTE_USUARIO':
        return value.copyWith(ultimaSyncClienteUsuario: Value(date));
      case 'ULTIMA_SYNC_CLIENTE_CONTACTO':
        return value.copyWith(ultimaSyncClienteContacto: Value(date));
      case 'ULTIMA_SYNC_CLIENTE_DESCUENTO':
        return value.copyWith(ultimaSyncClienteDescuento: Value(date));
      case 'ULTIMA_SYNC_CLIENTE_DIRECCION':
        return value.copyWith(ultimaSyncClienteDireccion: Value(date));
      case 'ULTIMA_SYNC_CLIENTE_PRECIO_NETO':
        return value.copyWith(ultimaSyncClientePrecioNeto: Value(date));
      case 'ULTIMA_SYNC_CLIENTE_GRUPO_NETO':
        return value.copyWith(ultimaSyncClienteGrupoNeto: Value(date));
      case 'ULTIMA_SYNC_CLIENTE_PAGO_PENDIENTE':
        return value.copyWith(ultimaSyncClientePagoPendiente: Value(date));
      case 'ULTIMA_SYNC_CLIENTE_RAPPELS':
        return value.copyWith(ultimaSyncClienteRappels: Value(date));
      case 'ULTIMA_SYNC_ARTICULOS_TOP':
        return value.copyWith(ultimaSyncArticulosTop: Value(date));
      case 'ULTIMA_SYNC_PEDIDO_VENTA':
        return value.copyWith(ultimaSyncPedidoVenta: Value(date));
      case 'ULTIMA_SYNC_PEDIDO_VENTA_LINEA':
        return value.copyWith(ultimaSyncPedidoVentaLinea: Value(date));
      case 'ULTIMA_SYNC_PEDIDO_VENTA_ESTADO':
        return value.copyWith(ultimaSyncPedidoVentaEstado: Value(date));
      case 'ULTIMA_SYNC_ARTICULO':
        return value.copyWith(ultimaSyncArticulo: Value(date));
      case 'ULTIMA_SYNC_FAMILIA':
        return value.copyWith(ultimaSyncFamilia: Value(date));
      case 'ULTIMA_SYNC_SUBFAMILIA':
        return value.copyWith(ultimaSyncSubfamilia: Value(date));
      case 'ULTIMA_SYNC_ARTICULO_GRUPO_NETO':
        return value.copyWith(ultimaSyncArticuloGrupoNeto: Value(date));
      case 'ULTIMA_SYNC_ARTICULO_TARIFA_PRECIO':
        return value.copyWith(ultimaSyncArticuloTarifaPrecio: Value(date));
      case 'ULTIMA_SYNC_ARTICULO_COMPONENTE':
        return value.copyWith(ultimaSyncArticuloComponente: Value(date));
      case 'ULTIMA_SYNC_ARTICULO_SUSTITUTIVO':
        return value.copyWith(ultimaSyncArticuloSustitutivo: Value(date));
      case 'ULTIMA_SYNC_ARTICULO_RECAMBIO':
        return value.copyWith(ultimaSyncArticuloRecambio: Value(date));
      case 'ULTIMA_SYNC_ARTICULO_EMPRESA_IVA':
        return value.copyWith(ultimaSyncArticuloEmpresaIva: Value(date));
      case 'ULTIMA_SYNC_ESTADISTICAS_VENTA_CLIENTE_USUARIO':
        return value.copyWith(
            ultimaSyncEstadisticasClienteUsuarioVentas: Value(date));
      case 'ULTIMA_SYNC_ESTADISTICAS_ULTIMOS_PRECIOS':
        return value.copyWith(
            ultimaSyncEstadisticasUltimosPrecios: Value(date));
      case 'ULTIMA_SYNC_VISIT':
        return value.copyWith(ultimaSyncVisita: Value(date));

      default:
        return value;
    }
  }

  Future<String?> getUltimaFechaSync({required String columnName}) async {
    switch (columnName) {
      case 'ULTIMA_SYNC_DIVISA':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncDivisa;
      case 'ULTIMA_SYNC_PAIS':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncPais;
      case 'ULTIMA_SYNC_METODO_COBRO':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncMetodoDeCobro;
      case 'ULTIMA_SYNC_PLAZO_COBRO':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncPlazoDeCobro;
      case 'ULTIMA_SYNC_CLIENTE':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncCliente;
      case 'ULTIMA_SYNC_CLIENTE_USUARIO':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncClienteUsuario;
      case 'ULTIMA_SYNC_CLIENTE_CONTACTO':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncClienteContacto;
      case 'ULTIMA_SYNC_CLIENTE_DESCUENTO':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncClienteDescuento;
      case 'ULTIMA_SYNC_CLIENTE_DIRECCION':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncClienteDireccion;
      case 'ULTIMA_SYNC_CLIENTE_PRECIO_NETO':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncClientePrecioNeto;
      case 'ULTIMA_SYNC_CLIENTE_GRUPO_NETO':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncClienteGrupoNeto;
      case 'ULTIMA_SYNC_CLIENTE_PAGO_PENDIENTE':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncClientePagoPendiente;
      case 'ULTIMA_SYNC_CLIENTE_RAPPELS':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncClienteRappels;
      case 'ULTIMA_SYNC_ARTICULOS_TOP':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncArticulosTop;
      case 'ULTIMA_SYNC_PEDIDO_VENTA':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncPedidoVenta;
      case 'ULTIMA_SYNC_PEDIDO_VENTA_LINEA':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncPedidoVentaLinea;
      case 'ULTIMA_SYNC_PEDIDO_VENTA_ESTADO':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncPedidoVentaLinea;
      case 'ULTIMA_SYNC_ARTICULO':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncArticulo;
      case 'ULTIMA_SYNC_FAMILIA':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncFamilia;
      case 'ULTIMA_SYNC_SUBFAMILIA':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncSubfamilia;
      case 'ULTIMA_SYNC_ARTICULO_GRUPO_NETO':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncArticuloGrupoNeto;
      case 'ULTIMA_SYNC_ARTICULO_TARIFA_PRECIO':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncArticuloTarifaPrecio;
      case 'ULTIMA_SYNC_ARTICULO_COMPONENTE':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncArticuloComponente;
      case 'ULTIMA_SYNC_ARTICULO_SUSTITUTIVO':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncArticuloSustitutivo;
      case 'ULTIMA_SYNC_ARTICULO_RECAMBIO':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncArticuloRecambio;
      case 'ULTIMA_SYNC_ARTICULO_EMPRESA_IVA':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncArticuloEmpresaIva;
      case 'ULTIMA_SYNC_ESTADISTICAS_VENTA_CLIENTE_USUARIO':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncEstadisticasClienteUsuarioVentas;
      case 'ULTIMA_SYNC_ESTADISTICAS_ULTIMOS_PRECIOS':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncEstadisticasUltimosPrecios;
      case 'ULTIMA_SYNC_VISITA':
        return (await (db.select(db.fechaUltimaSyncTable)..limit(1))
                .getSingleOrNull())
            ?.ultimaSyncVisita;

      default:
        return null;
    }
  }
}
