import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_archive/flutter_archive.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/dio_extension.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/pais_dto.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/subfamilia_dto.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_empresa_iva_dto.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/infrastructure/pedido_venta_estado_dto.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/infrastructure/pedido_venta_linea_dto.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../../features/articulos/infrastructure/articulo_componente_dto.dart';
import '../../features/articulos/infrastructure/articulo_dto.dart';
import '../../features/articulos/infrastructure/articulo_grupo_neto_dto.dart';
import '../../features/articulos/infrastructure/articulo_precio_tarifa_dto.dart';
import '../../features/articulos/infrastructure/articulo_recambio_dto.dart';
import '../../features/articulos/infrastructure/articulo_sustitutivo_dto.dart';
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
import '../../features/visitas/infrastructure/visita_dto.dart';
import '../exceptions/app_exception.dart';
import '../helpers/formatters.dart';
import '../presentation/app.dart';
import 'database.dart';
import 'divisa_dto.dart';
import 'familia_dto.dart';
import 'jbm_headers.dart';
import 'log.dart';
import 'remote_response.dart';

final syncServiceProvider = Provider.autoDispose<SyncService>(
  (ref) => SyncService(
    ref.watch(appDatabaseProvider),
    ref.watch(dioProvider),
  ),
);

class SyncService {
  final Dio _dio;
  final AppDatabase _db;

  static final remoteDatabaseDateTimeEndpoint = Uri.http(
    dotenv.get('URL', fallback: 'localhost:3001'),
    '/api/v1/sync/db-datetime',
  );

  static final remoteInitDatabaseEndpoint = Uri.http(
    dotenv.get('URL', fallback: 'localhost:3001'),
    '/api/v1/sync/init-db',
  );

  SyncService(this._db, this._dio);

  Future<void> initDatabaBase() async {
    try {
      final Directory directory = await getApplicationDocumentsDirectory();
      print(directory);
      if (!await _databaseFileExist(directory: directory)) {
        final data = await _getRemoteInitialDatabase();

        await _saveLocalInitialDatabase(directory: directory, data: data);
      }
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    }
  }

  Future<DateTime> getRemoteDatabaseDateTime() async {
    try {
      final response = await _dio.getUri(
        remoteDatabaseDateTimeEndpoint,
      );

      if (response.statusCode == 200) {
        final dateStr = response.data['data'] as String;
        return DateTime.parse(dateStr);
      } else {
        throw AppException.restApiFailure(response.statusCode ?? 500,
            response.statusMessage ?? 'Internet Error');
      }
    } on DioError catch (e) {
      throw AppException.restApiFailure(
        e.response?.statusCode ?? 500,
        e.response?.data['error']['detail'] ??
            e.response?.data['message'] ??
            'Internet Error',
      );
      // }
      // on TimeoutException catch (e) {
      //   throw AppException.restApiFailure(500, e.toString());
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> _databaseFileExist({required Directory directory}) async {
    return await File((join(directory.path, localDatabaseName))).exists();
  }

  Future<dynamic> _getRemoteInitialDatabase() async {
    try {
      final response = await _dio.getUri(
        remoteInitDatabaseEndpoint,
        options: Options(
            responseType: ResponseType.bytes,
            receiveDataWhenStatusError: true,
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }),
      );

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 500, response.toString());
      }
    } on DioError catch (e) {
      throw AppException.restApiFailure(
        e.response?.statusCode ?? 500,
        e.response?.data['error']['detail'] ??
            e.response?.data['message'] ??
            'Internet Error',
      );
    }
  }

  Future<void> _saveLocalInitialDatabase(
      {required Directory directory, required List<int> data}) async {
    RandomAccessFile? raf;

    try {
      final temporalyDirectory = await getTemporaryDirectory();
      final File file =
          File((join(temporalyDirectory.path, localDatabaseName)));
      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(data);

      await ZipFile.extractToDirectory(
          zipFile: file, destinationDir: directory);
      file.deleteSync(recursive: true);
    } catch (e) {
      rethrow;
    } finally {
      raf?.close();
    }
  }

  Future<void> syncAllArticulosRelacionados() async {
    try {
      await syncArticulos();
      await syncArticuloEmpresasIva();
      await syncArticuloGruposNetos();
      await syncArticuloComponentes();
      await syncArticuloTarifaPrecio();
      await syncArticuloRecambios();
      await syncArticuloSustitutivo();
      await syncUltimosPrecios();
      await syncFamilias();
      await syncSubfamilias();
      await syncAllAuxiliares();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllClientesRelacionados() async {
    try {
      await syncClientes();
      await syncTopArticulos();
      await syncClienteGruposNetos();
      await syncClienteContactos();
      await syncClienteDescuentos();
      await syncClienteDirecciones();
      await syncClientePreciosNetos();
      await syncClientesPagosPendients();
      await syncClientesRappels();
      await syncClientesUsuario();
      await syncAllAuxiliares();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllPedidosRelacionados() async {
    try {
      await syncPedidos();
      await syncPedidoVentaLinea();
      await syncPedidoVentaEstado();
      await syncAllAuxiliares();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllVisitasRelacionados() async {
    await syncVisitas();
  }

  Future<void> syncAllAuxiliares() async {
    try {
      await syncPaises();
      await syncDivisas();
      await syncMetodoCobro();
      await syncPlazosCobro();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticulos() async {
    try {
      await _syncTable(
        apiPath: '/articulos',
        tableInfo: _db.articuloTable,
        fromJson: (e) => ArticuloDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloEmpresasIva() async {
    try {
      await _syncTable(
        apiPath: '/articulos/empresa-iva',
        tableInfo: _db.articuloEmpresaIvaTable,
        fromJson: (e) => ArticuloEmpresaIvaDTO.fromJson(e),
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
      await _syncTable(
        apiPath: '/articulos/componentes',
        tableInfo: _db.articuloComponenteTable,
        fromJson: (e) => ArticuloComponenteDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloGruposNetos() async {
    try {
      await _syncTable(
        apiPath: '/articulos/grupos-netos',
        tableInfo: _db.articuloGrupoNetoTable,
        fromJson: (e) => ArticuloGrupoNetoDTO.fromJson(e),
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
      await _syncTable(
        apiPath: '/articulos/precios-tarifa',
        tableInfo: _db.articuloPrecioTarifaTable,
        fromJson: (e) => ArticuloPrecioTarifaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloRecambios() async {
    try {
      await _syncTable(
        apiPath: '/articulos/recambios',
        tableInfo: _db.articuloRecambioTable,
        fromJson: (e) => ArticuloRecambioDTO.fromJson(e),
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
      await _syncTable(
        apiPath: '/articulos/sustitutivos',
        tableInfo: _db.articuloSustitutivoTable,
        fromJson: (e) => ArticuloSustitutivoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncUltimosPrecios() async {
    try {
      await _syncTable(
        apiPath: '/estadisticas/ultimos-precios-cliente-articulo',
        tableInfo: _db.estadisticasUltimosPreciosTable,
        fromJson: (e) => EstadisticasUltimosPreciosDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClientes() async {
    try {
      await _syncTable(
        apiPath: '/clientes',
        tableInfo: _db.clienteTable,
        fromJson: (e) => ClienteDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClientesUsuario() async {
    try {
      await _syncTable(
        apiPath: '/clientes-usuario',
        tableInfo: _db.clienteUsuarioTable,
        fromJson: (e) => ClienteUsuarioDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClienteDirecciones() async {
    try {
      await _syncTable(
        apiPath: '/clientes/direcciones',
        tableInfo: _db.clienteDireccionTable,
        fromJson: (e) => ClienteDireccionDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClienteContactos() async {
    try {
      await _syncTable(
        apiPath: '/clientes/contactos',
        tableInfo: _db.clienteContactoTable,
        fromJson: (e) => ClienteContactoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClienteDescuentos() async {
    try {
      await _syncTable(
        apiPath: '/clientes/descuentos',
        tableInfo: _db.clienteDescuentoTable,
        fromJson: (e) => ClienteDescuentoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClienteGruposNetos() async {
    try {
      await _syncTable(
        apiPath: '/clientes/grupos-netos',
        tableInfo: _db.clienteGrupoNetoTable,
        fromJson: (e) => ClienteGrupoNetoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClientePreciosNetos() async {
    try {
      await _syncTable(
        apiPath: '/clientes/precios-netos',
        tableInfo: _db.clientePrecioNetoTable,
        fromJson: (e) => ClientePrecioNetoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClientesPagosPendients() async {
    try {
      await _syncTable(
        apiPath: '/clientes/pagos-pendientes',
        tableInfo: _db.clientePagoPendienteTable,
        fromJson: (e) => ClientePagoPendienteDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClientesRappels() async {
    try {
      await _syncTable(
        apiPath: '/clientes/rappels',
        tableInfo: _db.clienteRappelTable,
        fromJson: (e) => ClienteRappelDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncTopArticulos() async {
    try {
      await _syncTable(
        apiPath: '/clientes/articulos-top',
        tableInfo: _db.articuloTopTable,
        fromJson: (e) => ArticuloTopDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncPedidos() async {
    try {
      await _syncTable(
        apiPath: '/pedidos',
        tableInfo: _db.pedidoVentaTable,
        fromJson: (e) => PedidoVentaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncPedidoVentaLinea() async {
    try {
      await _syncTable(
        apiPath: '/pedidos/detalle',
        tableInfo: _db.pedidoVentaLineaTable,
        fromJson: (e) => PedidoVentaLineaDTO.fromJson(e),
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
      await _syncTable(
        apiPath: '/pedidos/estados',
        tableInfo: _db.pedidoVentaEstadoTable,
        fromJson: (e) => PedidoVentaEstadoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncVisitas() async {
    try {
      await _syncTable(
        apiPath: '/visitas',
        tableInfo: _db.visitaTable,
        fromJson: (e) => VisitaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncPaises() async {
    try {
      await _syncTable(
        apiPath: '/paises',
        tableInfo: _db.paisTable,
        fromJson: (e) => PaisDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncDivisas() async {
    try {
      await _syncTable(
        apiPath: '/divisa',
        tableInfo: _db.divisaTable,
        fromJson: (e) => DivisaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncPlazosCobro() async {
    try {
      await _syncTable(
        apiPath: '/plazos-cobro',
        tableInfo: _db.plazoDeCobroTable,
        fromJson: (e) => PlazoDeCobroDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncMetodoCobro() async {
    try {
      await _syncTable(
        apiPath: '/metodos-cobro',
        tableInfo: _db.metodoDeCobroTable,
        fromJson: (e) => MetodoDeCobroDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncFamilias() async {
    try {
      await _syncTable(
        apiPath: '/articulos/familia',
        tableInfo: _db.familiaTable,
        fromJson: (e) => FamiliaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncSubfamilias() async {
    try {
      await _syncTable(
        apiPath: '/articulos/subfamilia',
        tableInfo: _db.subfamiliaTable,
        fromJson: (e) => SubfamiliaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _syncTable({
    required String apiPath,
    required TableInfo<Table, dynamic> tableInfo,
    required Function(Map<String, dynamic> e) fromJson,
  }) async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final remoteDatabaseDateTime = await getRemoteDatabaseDateTime();

      final ultimaFechaSync = await getLastUpdatedDate(tableInfo: tableInfo);

      print('SYNC: $apiPath');

      while (isNextPageAvailable) {
        final query = _getAPIQuery(
            page: page,
            dateFrom: ultimaFechaSync.toUtc(),
            dateTo: remoteDatabaseDateTime.toUtc(),
            totalRows: totalRows);

        final remotePageItems = await _getRemoteData(
            apiPath: '/api/v1/sync/$apiPath',
            query: query,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final tableValueDTOList = data.map((e) => fromJson(e)).toList();
            for (var i = 0; i < tableValueDTOList.length; i++) {
              final tableValue = tableValueDTOList[i];

              if (tableValue.deleted == 'S') {
                await deleteTableValue(tableInfo: tableInfo, dto: tableValue);
              } else {
                await upsertTable(tableInfo: tableInfo, dto: tableValue);
              }
            }

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> upsertTable(
      {required TableInfo<Table, dynamic> tableInfo,
      required dynamic dto}) async {
    try {
      await _db.into(tableInfo).insertOnConflictUpdate(dto);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteTableValue(
      {required TableInfo<Table, dynamic> tableInfo,
      required dynamic dto}) async {
    try {
      await _db.delete(tableInfo).delete(dto);
    } catch (e) {
      rethrow;
    }
  }

  Map<String, String> _getAPIQuery(
      {required int page,
      DateTime? dateFrom,
      required DateTime dateTo,
      required int? totalRows}) {
    final query = {
      'page': '$page',
      'pageSize': '5000',
      'dateTo': dateTo.toIso8601String()
    };

    if (dateFrom != null) {
      query.addAll({'dateFrom': dateFrom.toIso8601String()});
    }

    if (totalRows != null) {
      query.addAll({'totalRows': '$totalRows'});
    }
    return query;
  }

  Future<RemoteResponse<List<Map<String, dynamic>>>> _getRemoteData({
    required String apiPath,
    Map<String, String>? query,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
  }) async {
    try {
      final response = await _dio.getUri(
        Uri.http(
          dotenv.get('URL', fallback: 'localhost:3001'),
          apiPath,
          query,
        ),
      );

      if (response.statusCode == 200) {
        final convertedDate = jsonDataSelector(response.data)
            .map((pedidoVentaMap) => pedidoVentaMap as Map<String, dynamic>)
            .toList();
        final headers = JBMHeaders.parse(response);

        return RemoteResponse.withNewData(
          convertedDate,
          maxPage: headers.maxPage ?? 1,
          totalRows: headers.totalRows ?? 0,
        );
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 500, response.toString());
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else {
        throw AppException.restApiFailure(
          e.response?.statusCode ?? 500,
          e.response?.data['error']['detail'] ??
              e.response?.data['message'] ??
              'Internet Error',
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<DateTime> getLastUpdatedDate(
      {required TableInfo<Table, dynamic> tableInfo}) async {
    try {
      final query = await _db.customSelect(
          ''' SELECT MAX(LAST_UPDATED) as MAX_DATE FROM ${tableInfo.actualTableName}
          ''').getSingle();

      return DateTime.parse(query.data['MAX_DATE']);
    } catch (e) {
      rethrow;
    }
  }
}
