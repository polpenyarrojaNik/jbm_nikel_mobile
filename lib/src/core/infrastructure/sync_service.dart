import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import '../../core/infrastructure/pais_dto.dart';
import '../../core/infrastructure/subfamilia_dto.dart';
import '../../features/app_initialization/domain/sync_progress.dart';
import '../../features/articulos/infrastructure/articulo_componente_dto.dart';
import '../../features/articulos/infrastructure/articulo_dto.dart';
import '../../features/articulos/infrastructure/articulo_empresa_iva_dto.dart';
import '../../features/articulos/infrastructure/articulo_grupo_neto_dto.dart';
import '../../features/articulos/infrastructure/articulo_precio_tarifa_dto.dart';
import '../../features/articulos/infrastructure/articulo_recambio_dto.dart';
import '../../features/articulos/infrastructure/articulo_sustitutivo_dto.dart';
import '../../features/articulos/infrastructure/descuento_general_dto.dart';
import '../../features/catalogos/infrastructure/catalogo_favorito_dto.dart';
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
import '../../features/devoluciones/infrastructure/devolucion_dto.dart';
import '../../features/devoluciones/infrastructure/devolucion_estado_dto.dart';
import '../../features/devoluciones/infrastructure/devolucion_linea_dto.dart';
import '../../features/devoluciones/infrastructure/devolucion_motivo_dto.dart';
import '../../features/devoluciones/infrastructure/devolucion_tipo_dto.dart';
import '../../features/estadisticas/infrastructure/estadisticas_articulos_top_dto.dart';
import '../../features/estadisticas/infrastructure/estadisticas_ultimos_precios_dto.dart';
import '../../features/estadisticas/infrastructure/estadisticas_venta_cliente_usuario_dto.dart';
import '../../features/pedido_venta/domain/pedido_venta_linea.dart';
import '../../features/pedido_venta/infrastructure/pedido_albaran_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_estado_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_linea_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_linea_local_dto.dart';
import '../../features/pedido_venta/infrastructure/pedido_venta_local_dto.dart';
import '../../features/usuario/application/usuario_notifier.dart';
import '../../features/usuario/domain/usuario.dart';
import '../../features/usuario/infrastructure/usuario_service.dart';
import '../../features/visitas/infrastructure/visita_competidor_dto.dart';
import '../../features/visitas/infrastructure/visita_dto.dart';
import '../../features/visitas/infrastructure/visita_local_dto.dart';
import '../../features/visitas/infrastructure/visita_motivos_no_venta_dto.dart';
import '../../features/visitas/infrastructure/visita_sector_dto.dart';
import '../application/log_service.dart';
import '../domain/adjunto_param.dart';
import '../domain/log.dart';
import '../exceptions/app_exception.dart';
import '../exceptions/get_api_error.dart';
import '../presentation/app.dart';
import 'divisa_dto.dart';
import 'familia_dto.dart';
import 'jbm_headers.dart';
import 'local_database.dart' as local;
import 'local_database.dart';
import 'log_dto.dart';
import 'log_repository.dart';
import 'provincia_dto.dart';
import 'remote_database.dart';
import 'remote_response.dart';

typedef Json = Map<String, dynamic>;
final syncServiceProvider = Provider.autoDispose<SyncService>(
  (ref) => SyncService(
    ref.watch(appRemoteDatabaseProvider),
    ref.watch(local.appLocalDatabaseProvider),
    ref.watch(dioProvider),
    ref.watch(usuarioNotifierProvider),
    ref.watch(usuarioServiceProvider),
    ref.watch(logRepositoryProvider),
    null,
  ),
);

class SyncService {
  final Dio _dio;
  final RemoteAppDatabase _remoteDb;
  final local.LocalAppDatabase _localDb;
  final Usuario? _usuario;
  final UsuarioService? usuarioService;
  final LogRepository logRepository;
  final Directory? documentDirectory;

  static final remoteDatabaseDateTimeEndpoint = Uri.http(
    'jbm-api.nikel.es',
    '/api/v1/sync/db-datetime',
  );
  static final remoteDatabaseDateTimeTestEndpoint = Uri.http(
    'jbm-api-test.nikel.es:8080',
    '/api/v1/sync/db-datetime',
  );

  static final remoteLogEndpoint = Uri.http(
    'jbm-api.nikel.es',
    '/api/v2/online/log',
  );
  static final remoteLogTestEndpoint = Uri.http(
    'jbm-api-test.nikel.es:8080',
    '/api/v2/online/log',
  );

  SyncService(
    this._remoteDb,
    this._localDb,
    this._dio,
    this._usuario,
    this.usuarioService,
    this.logRepository,
    this.documentDirectory,
  );

  Future<DateTime> getRemoteDatabaseDateTime() async {
    try {
      final response = await _dio.getUri(
        (_usuario!.test)
            ? remoteDatabaseDateTimeTestEndpoint
            : remoteDatabaseDateTimeEndpoint,
      );

      if (response.statusCode == 200) {
        final dateStr = response.data['data'] as String;
        return DateTime.parse(dateStr);
      } else {
        throw AppException.restApiFailure(response.statusCode ?? 500,
            response.statusMessage ?? 'Internet Error');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<void> syncAllArticulosRelacionados(
      {required bool isInMainThread}) async {
    try {
      await insetLog(level: 'I', message: 'Init article sync');
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
      await syncDescuentoGeneral();
      if (isInMainThread) {
        await syncAllAuxiliares();
      }
      await insetLog(level: 'I', message: 'End article sync');

      await saveLastSyncDateTimeInArticulos();
    } catch (e) {
      await insetLog(level: 'I', message: 'Error article sync');

      rethrow;
    }
  }

  Future<void> syncAllClientesRelacionados(
      {required bool isInMainThread}) async {
    try {
      await insetLog(level: 'I', message: 'Init customer sync');

      await syncClientes();
      await syncTopArticulos();
      await syncClienteGruposNetos();
      await syncClienteContactos();
      await checkClientesContactosImp();
      await syncClienteDescuentos();
      await syncClienteDirecciones();
      await checkClientesDireccionesImp();
      await syncClientePreciosNetos();
      await syncClientesPagosPendients();
      await syncClientesRappels();
      await syncClientesUsuario();
      await syncVentasUsuario();
      await syncDevoluciones();
      await syncUltimosPrecios();
      await syncDevolucionesLineas();
      await syncDevolucionesTipos();
      await syncDevolucionesEstados();
      await syncDevolucionesMotivos();

      if (isInMainThread) {
        await syncAllAuxiliares();
      }
      await insetLog(level: 'I', message: 'End customer sync');

      await saveLastSyncDateTimeInClientes();
    } catch (e) {
      await insetLog(level: 'I', message: 'Error customer sync');

      rethrow;
    }
  }

  Future<void> syncAllPedidosRelacionados(
      {required bool isInMainThread}) async {
    try {
      await insetLog(level: 'I', message: 'Init sales order sync');

      await usuarioService?.syncUser();
      await deletePedidosAntiguos();
      await enviarPedidosNoEnviados();
      await checkBorradores();
      await syncPedidos();
      await checkPedidoVentaTratados();
      await syncPedidoVentaLinea();
      await syncPedidoVentaAlbaran();
      await syncPedidoVentaEstado();

      if (isInMainThread) {
        await syncAllAuxiliares();
      }
      await insetLog(level: 'I', message: 'End sales order sync');

      await saveLastSyncDateTimeInPedidos();
    } catch (e) {
      await insetLog(level: 'I', message: 'Error sales order sync');

      rethrow;
    }
  }

  Future<void> syncAllVisitasRelacionados(
      {required bool isInMainThread}) async {
    try {
      await insetLog(level: 'I', message: 'Init visits sync');

      await enviarVisitasNoEnviadas();

      await syncVisitas();
      await checkVisitasTratadas();
      await syncVisitasCompetidor();
      await syncVisitasMotivosNoVenta();
      await syncVisitasSectores();
      if (isInMainThread) {
        await syncAllAuxiliares();
      }
      await insetLog(level: 'I', message: 'End visits sync');

      await saveLastSyncDateTimeInVisitas();
    } catch (e) {
      await insetLog(level: 'I', message: 'Error vists sync');

      rethrow;
    }
  }

  Future<void> syncAllAuxiliares() async {
    try {
      await syncPaises();
      await syncDivisas();
      await syncMetodoCobro();
      await syncPlazosCobro();
      await syncProvincias();
    } catch (e) {
      await insetLog(level: 'I', message: 'Error visits sync');

      rethrow;
    }
  }

  Future<void> syncArticulos() async {
    try {
      await _syncTable(
        apiPath: 'api/v2/sync/articulos',
        tableInfo: _remoteDb.articuloTable,
        fromJson: (e) => ArticuloDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloEmpresasIva() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/articulos/empresa-iva',
        tableInfo: _remoteDb.articuloEmpresaIvaTable,
        fromJson: (e) => ArticuloEmpresaIvaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloComponentes() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/articulos/componentes',
        tableInfo: _remoteDb.articuloComponenteTable,
        fromJson: (e) => ArticuloComponenteDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloGruposNetos() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/articulos/grupos-netos',
        tableInfo: _remoteDb.articuloGrupoNetoTable,
        fromJson: (e) => ArticuloGrupoNetoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloTarifaPrecio() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/articulos/precios-tarifa',
        tableInfo: _remoteDb.articuloPrecioTarifaTable,
        fromJson: (e) => ArticuloPrecioTarifaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloRecambios() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/articulos/recambios',
        tableInfo: _remoteDb.articuloRecambioTable,
        fromJson: (e) => ArticuloRecambioDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncArticuloSustitutivo() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/articulos/sustitutivos',
        tableInfo: _remoteDb.articuloSustitutivoTable,
        fromJson: (e) => ArticuloSustitutivoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncUltimosPrecios() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/estadisticas/ultimos-precios-cliente-articulo',
        tableInfo: _remoteDb.estadisticasUltimosPreciosTable,
        fromJson: (e) => EstadisticasUltimosPreciosDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncVentasUsuario() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/estadisticas/ventas-usuario',
        tableInfo: _remoteDb.estadisticasClienteUsuarioVentasTable,
        fromJson: (e) => EstadisticasVentaClienteUsuarioDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClientes() async {
    try {
      await _syncTable(
        apiPath: 'api/v2/sync/clientes',
        tableInfo: _remoteDb.clienteTable,
        fromJson: (e) => ClienteDTO.fromJson(e),
      );
      // await saveLastSyncInSharedPreferences(clienteFechaUltimaSyncKey);
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClientesUsuario() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/clientes-usuario',
        tableInfo: _remoteDb.clienteUsuarioTable,
        fromJson: (e) => ClienteUsuarioDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClienteDirecciones() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/clientes/direcciones',
        tableInfo: _remoteDb.clienteDireccionTable,
        fromJson: (e) => ClienteDireccionDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClienteContactos() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/clientes/contactos',
        tableInfo: _remoteDb.clienteContactoTable,
        fromJson: (e) => ClienteContactoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClienteDescuentos() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/clientes/descuentos',
        tableInfo: _remoteDb.clienteDescuentoTable,
        fromJson: (e) => ClienteDescuentoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClienteGruposNetos() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/clientes/grupos-netos',
        tableInfo: _remoteDb.clienteGrupoNetoTable,
        fromJson: (e) => ClienteGrupoNetoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClientePreciosNetos() async {
    try {
      await _syncTable(
        apiPath: 'api/v2/sync/clientes/precios-netos',
        tableInfo: _remoteDb.clientePrecioNetoTable,
        fromJson: (e) => ClientePrecioNetoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClientesPagosPendients() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/clientes/pagos-pendientes',
        tableInfo: _remoteDb.clientePagoPendienteTable,
        fromJson: (e) => ClientePagoPendienteDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncClientesRappels() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/clientes/rappels',
        tableInfo: _remoteDb.clienteRappelTable,
        fromJson: (e) => ClienteRappelDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncDevoluciones() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/devolucion',
        tableInfo: _remoteDb.devolucionTable,
        fromJson: (e) => DevolucionDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncDevolucionesLineas() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/devolucion/lineas',
        tableInfo: _remoteDb.devolucionLineaTable,
        fromJson: (e) => DevolucionLineaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncDevolucionesEstados() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/devolucion/estados',
        tableInfo: _remoteDb.devolucionEstadoTable,
        fromJson: (e) => DevolucionEstadoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncDevolucionesTipos() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/devolucion/tipos',
        tableInfo: _remoteDb.devolucionTipoTable,
        fromJson: (e) => DevolucionTipoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncDevolucionesMotivos() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/devolucion/motivos',
        tableInfo: _remoteDb.devolucionMotivoTable,
        fromJson: (e) => DevolucionMotivoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncTopArticulos() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/clientes/articulos-top',
        tableInfo: _remoteDb.estadisticasArticulosTopTable,
        fromJson: (e) => EstadisitcasArticulosTopDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> enviarPedidosNoEnviados() async {
    try {
      final pedidosNoEnviados = await getPedidosNoEnviados();
      for (var i = 0; i < pedidosNoEnviados.length; i++) {
        final pedidoVentaLineaDTOList = await getLocalPedidoVentaLineaList(
            pedidoVentaAppId: pedidosNoEnviados[i].pedidoVentaAppId);
        try {
          final pedidoLocalEnviado = await _remoteCreatePedidos(
              pedidosNoEnviados[i],
              pedidoVentaLineaDTOList
                  .map((e) => PedidoVentaLineaLocalDTO.fromDomain(e))
                  .toList(),
              _usuario!.provisionalToken);
          await updatePedidoVentaInDB(pedidoVentaLocalDto: pedidoLocalEnviado);
        } catch (e) {
          log.e(e);
        }
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<PedidoVentaLinea>> getLocalPedidoVentaLineaList(
      {required String pedidoVentaAppId}) async {
    try {
      final pedidoVentaLineaLocalListDTO =
          await (_localDb.select(_localDb.pedidoVentaLineaLocalTable)
                ..where((tbl) => tbl.pedidoVentaAppId.equals(pedidoVentaAppId)))
              .get();

      final pedidoVentaLocalDTO =
          await (_localDb.select(_localDb.pedidoVentaLocalTable)
                ..where((tbl) => tbl.pedidoVentaAppId.equals(pedidoVentaAppId)))
              .getSingle();

      return pedidoVentaLineaLocalListDTO
          .map((e) => e.toDomain(divisaId: pedidoVentaLocalDTO.divisaId!))
          .toList();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<void> syncPedidos() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/pedidos',
        tableInfo: _remoteDb.pedidoVentaTable,
        fromJson: (e) => PedidoVentaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncPedidoVentaLinea() async {
    try {
      await _syncTable(
        apiPath: 'api/v2/sync/pedidos/detalle',
        tableInfo: _remoteDb.pedidoVentaLineaTable,
        fromJson: (e) => PedidoVentaLineaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncPedidoVentaAlbaran() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/pedidos/albaranes',
        tableInfo: _remoteDb.pedidoAlbaranTable,
        fromJson: (e) => PedidoAlbaranDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncPedidoVentaEstado() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/pedidos/estados',
        tableInfo: _remoteDb.pedidoVentaEstadoTable,
        fromJson: (e) => PedidoVentaEstadoDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncVisitas() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/v3/visitas',
        tableInfo: _remoteDb.visitaTable,
        fromJson: (e) => VisitaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncVisitasCompetidor() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/visitas/competidores',
        tableInfo: _remoteDb.visitaCompetidorTable,
        fromJson: (e) => VisitaCompetidorDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncVisitasSectores() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/visitas/sectores',
        tableInfo: _remoteDb.visitaSectorTable,
        fromJson: (e) => VisitaSectorDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncVisitasMotivosNoVenta() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/visitas/motivos_no_venta',
        tableInfo: _remoteDb.visitaMotivoNoVentaTable,
        fromJson: (e) => VisitaMotivoNoVentaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncPaises() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/paises',
        tableInfo: _remoteDb.paisTable,
        fromJson: (e) => PaisDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncDivisas() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/divisa',
        tableInfo: _remoteDb.divisaTable,
        fromJson: (e) => DivisaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncPlazosCobro() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/plazos-cobro',
        tableInfo: _remoteDb.plazoDeCobroTable,
        fromJson: (e) => PlazoDeCobroDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncProvincias() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/provincias',
        tableInfo: _remoteDb.provinciaTable,
        fromJson: (e) => ProvinciaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncMetodoCobro() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/metodos-cobro',
        tableInfo: _remoteDb.metodoDeCobroTable,
        fromJson: (e) => MetodoDeCobroDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncFamilias() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/articulos/familia',
        tableInfo: _remoteDb.familiaTable,
        fromJson: (e) => FamiliaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncSubfamilias() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/articulos/subfamilia',
        tableInfo: _remoteDb.subfamiliaTable,
        fromJson: (e) => SubfamiliaDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
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
    var page = 1;
    var isNextPageAvailable = true;
    int? totalRows;

    try {
      final remoteDatabaseDateTime = await getRemoteDatabaseDateTime();

      final ultimaFechaSync = await getLastUpdatedDate(tableInfo: tableInfo);

      log.i('SYNC: $apiPath');

      while (isNextPageAvailable) {
        final query = _getAPIQuery(
            page: page,
            dateFrom: ultimaFechaSync?.toUtc(),
            dateTo: remoteDatabaseDateTime.toUtc(),
            totalRows: totalRows);

        final remotePageItems = await _getRemoteData(
          apiPath: apiPath,
          query: query,
        );

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            log.d('NUM VALUES ${tableInfo.actualTableName}: $totalRows');
            final tableValueDTOList = data.map((e) => fromJson(e)).toList();

            for (var i = 0; i < tableValueDTOList.length; i++) {
              final tableValue = tableValueDTOList[i];

              if (tableValue.deleted == 'S') {
                await deleteTableValue(
                    tableInfo: tableInfo,
                    dto: tableValue as Insertable<dynamic>);
              } else {
                await upsertTable(
                    tableInfo: tableInfo,
                    dto: tableValue as Insertable<dynamic>);
              }
            }

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> upsertTable(
      {required TableInfo<Table, dynamic> tableInfo,
      required Insertable<dynamic> dto}) async {
    try {
      await _remoteDb.into(tableInfo).insertOnConflictUpdate(dto);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteTableValue(
      {required TableInfo<Table, dynamic> tableInfo,
      required Insertable<dynamic> dto}) async {
    try {
      await _remoteDb.delete(tableInfo).delete(dto);
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
  }) async {
    try {
      final uri = Uri.https(
        'jbm-api.nikel.es',
        apiPath,
        query,
      );
      final testUri = Uri.http(
        'jbm-api-test.nikel.es:8080',
        apiPath,
        query,
      );

      final response = await _dio.getUri(!(_usuario!.test) ? uri : testUri,
          options: Options(
            headers: {'authorization': 'Bearer ${_usuario.provisionalToken}'},
          ));

      if (response.statusCode == 200) {
        final data = response.data as Json;

        final convertedDate = (data['data'] as List)
            .map((pedidoVentaMap) => pedidoVentaMap as Json)
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
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<DateTime?> getLastUpdatedDate(
      {required TableInfo<Table, dynamic> tableInfo}) async {
    try {
      final query = await _remoteDb.customSelect(
          ''' SELECT MAX(LAST_UPDATED) as MAX_DATE FROM ${tableInfo.actualTableName}
          ''').getSingle();

      if (query.data['MAX_DATE'] != null) {
        return DateTime.parse(query.data['MAX_DATE'] as String);
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> enviarVisitasNoEnviadas() async {
    try {
      final visitasNoEnviadas = await getVisitasNoEnviadas();
      for (var i = 0; i < visitasNoEnviadas.length; i++) {
        try {
          final visitaLocalEnviada = await _remoteCreateVisita(
              visitasNoEnviadas[i], _usuario!.provisionalToken);
          await updateVisitaInDB(visitaLocalDto: visitaLocalEnviada);
        } catch (e) {
          log.e(e);
        }
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<VisitaLocalDTO>> getVisitasNoEnviadas() async {
    try {
      return (_localDb.select(_localDb.visitaLocalTable)
            ..where((tbl) => tbl.enviada.equals('N')))
          .get();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<PedidoVentaLocalDTO>> getPedidosNoEnviados() async {
    try {
      return (_localDb.select(_localDb.pedidoVentaLocalTable)
            ..where(
                (tbl) => tbl.enviada.equals('N') & tbl.borrador.equals('N')))
          .get();
    } catch (e) {
      rethrow;
    }
  }

  Future<PedidoVentaLocalDTO> _remoteCreatePedidos(
      PedidoVentaLocalDTO pedidoVentaLocalDto,
      List<PedidoVentaLineaLocalDTO> pedidoVentaLineaDTOList,
      String provisionalToken) async {
    try {
      final pedidoVentaLocalToJson = pedidoVentaLocalDto.toJson();
      final pedidoVentaLineasLocalListToJson =
          pedidoVentaLineaDTOList.map((e) => e.toJson()).toList();
      pedidoVentaLocalToJson
          .addAll({'PEDIDO_VENTA_LINEAS': pedidoVentaLineasLocalListToJson});

      final requestUri = (_usuario!.test)
          ? Uri.http(
              // dotenv.get('URL', fallback: 'localhost:3001')
              'jbm-api-test.nikel.es:8080',
              'api/v4/online/pedidos',
            )
          : Uri.https(
              // dotenv.get('URL', fallback: 'localhost:3001')
              'jbm-api.nikel.es',
              'api/v4/online/pedidos',
            );

      final response = await _dio.postUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
        data: jsonEncode(pedidoVentaLocalToJson),
      );
      if (response.statusCode == 200) {
        final json = response.data['data'] as Map<String, dynamic>;

        return PedidoVentaLocalDTO.fromJson(json);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<VisitaLocalDTO> _remoteCreateVisita(
      VisitaLocalDTO visitaLocalDto, String provisionalToken) async {
    try {
      final requestUri = (_usuario!.test)
          ? Uri.http(
              // dotenv.get('URL', fallback: 'localhost:3001')
              'jbm-api-test.nikel.es:8080',
              'api/v5/online/visitas',
            )
          : Uri.https(
              // dotenv.get('URL', fallback: 'localhost:3001')
              'jbm-api.nikel.es',
              'api/v5/online/visitas',
            );

      final response = await _dio.postUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
        data: jsonEncode(visitaLocalDto.toJson()),
      );
      if (response.statusCode == 200) {
        final json = response.data['data'] as Map<String, dynamic>;

        return VisitaLocalDTO.fromJson(json);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<void> updatePedidoVentaInDB(
      {required PedidoVentaLocalDTO pedidoVentaLocalDto}) async {
    try {
      await _localDb
          .update(_localDb.pedidoVentaLocalTable)
          .replace(pedidoVentaLocalDto);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<void> updateVisitaInDB(
      {required VisitaLocalDTO visitaLocalDto}) async {
    try {
      await _localDb.update(_localDb.visitaLocalTable).replace(visitaLocalDto);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<void> checkPedidoVentaTratados() async {
    try {
      final pedidosNoTratadosDTO = await (_localDb
              .select(_localDb.pedidoVentaLocalTable)
            ..where(
                (tbl) => tbl.tratada.equals('N') & tbl.borrador.equals('N')))
          .get();

      for (var i = 0; i < pedidosNoTratadosDTO.length; i++) {
        final pedidoNoTratado = pedidosNoTratadosDTO[i];

        final pedidoNoTratadoExisitInPedidos =
            await checkIfPedidosHaSidoImportado(
                pedidoNoTratado.pedidoVentaAppId);

        if (pedidoNoTratadoExisitInPedidos) {
          await _localDb
              .update(_localDb.pedidoVentaLocalTable)
              .write(const PedidoVentaLocalTableCompanion(tratada: Value('S')));
        }
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> checkVisitasTratadas() async {
    try {
      final visitasNoTratadasDTO =
          await (_localDb.select(_localDb.visitaLocalTable)
                ..where((tbl) => tbl.tratada.equals('N')))
              .get();

      for (var i = 0; i < visitasNoTratadasDTO.length; i++) {
        final visitaNoTratada = visitasNoTratadasDTO[i];

        final visitaNoTratadaExisitInVisitas = await (_remoteDb
                .select(_remoteDb.visitaTable)
              ..where((tbl) =>
                  tbl.visitaAppId.equalsNullable(visitaNoTratada.visitaAppId)))
            .getSingleOrNull();

        if (visitaNoTratadaExisitInVisitas != null) {
          await _localDb.update(_localDb.visitaLocalTable).write(
              const local.VisitaLocalTableCompanion(tratada: Value('S')));
        }
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> checkClientesContactosImp() async {
    try {
      final clienteContactoImpListDTO =
          await (_localDb.select(_localDb.clienteContactoImpTable)
                ..where((tbl) => tbl.enviado.equals('S')))
              .get();

      for (var i = 0; i < clienteContactoImpListDTO.length; i++) {
        final haveBeenTratado = await _checkIfClienteContactoImpHaveBeenTratado(
            clienteContactoImpListDTO[i].clienteId,
            clienteContactoImpListDTO[i].id);

        if (haveBeenTratado) {
          await (_localDb.delete(_localDb.clienteContactoImpTable)
                ..where(
                    (tbl) => tbl.id.equals(clienteContactoImpListDTO[i].id)))
              .go();
        }
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> checkClientesDireccionesImp() async {
    try {
      final clienteDireccionImpListDTO =
          await (_localDb.select(_localDb.clienteDireccionImpTable)
                ..where((tbl) => tbl.enviada.equals('S')))
              .get();

      for (var i = 0; i < clienteDireccionImpListDTO.length; i++) {
        final haveBeenTratado =
            await _checkIfClienteDireccionImpHaveBeenTratada(
                clienteDireccionImpListDTO[i].clienteId,
                clienteDireccionImpListDTO[i].id);

        if (haveBeenTratado) {
          await (_localDb.delete(_localDb.clienteDireccionImpTable)
                ..where(
                    (tbl) => tbl.id.equals(clienteDireccionImpListDTO[i].id)))
              .go();
        }
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncDescuentoGeneral() async {
    try {
      await _syncTable(
        apiPath: 'api/v1/sync/articulos/descuento-general',
        tableInfo: _remoteDb.descuentoGeneralTable,
        fromJson: (e) => DescuentoGeneralDTO.fromJson(e),
      );
    } on AppException catch (e) {
      log.e(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> saveLastSyncDateTimeInArticulos() async {
    try {
      await _localDb.update(_localDb.syncDateTimeTable).write(
          local.SyncDateTimeTableCompanion(
              id: const Value(1),
              articuloUltimaSync: Value(DateTime.now().toUtc())));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> saveLastSyncDateTimeInClientes() async {
    try {
      await _localDb.update(_localDb.syncDateTimeTable).write(
          local.SyncDateTimeTableCompanion(
              id: const Value(1),
              clienteUltimaSync: Value(DateTime.now().toUtc())));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> saveLastSyncDateTimeInPedidos() async {
    try {
      await _localDb.update(_localDb.syncDateTimeTable).write(
          local.SyncDateTimeTableCompanion(
              id: const Value(1),
              pedidoUltimaSync: Value(DateTime.now().toUtc())));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> saveLastSyncDateTimeInVisitas() async {
    try {
      await _localDb.update(_localDb.syncDateTimeTable).write(
          local.SyncDateTimeTableCompanion(
              id: const Value(1),
              visitaUltimaSync: Value(DateTime.now().toUtc())));
    } catch (e) {
      rethrow;
    }
  }

  Future<SyncProgress> syncAllTable() async {
    var splashProgress = SyncProgress.downloadedDatabase;

    try {
      await syncAllArticulosRelacionados(isInMainThread: false);
      splashProgress = SyncProgress.syncArticulos;
      await syncAllClientesRelacionados(isInMainThread: false);
      splashProgress = SyncProgress.syncClientes;
      await syncAllPedidosRelacionados(isInMainThread: false);
      splashProgress = SyncProgress.syncPedidos;
      await syncAllVisitasRelacionados(isInMainThread: false);
      splashProgress = SyncProgress.syncVisitas;
      await syncAllAuxiliares();
      splashProgress = SyncProgress.syncAuxiliar;
      await syncCatalogos(isInMainThread: false);
      splashProgress = SyncProgress.syncCatalogos;

      return splashProgress;
    } catch (e) {
      return splashProgress;
    }
  }

  Future<bool> _checkIfClienteContactoImpHaveBeenTratado(
      String clienteId, String contactoImpGuid) async {
    try {
      final requestUri = (_usuario!.test)
          ? Uri.http(
              // dotenv.get('URL', fallback: 'localhost:3001'),
              'jbm-api-test.nikel.es:8080',
              'api/v1/sync/clientes/$clienteId/contactos/$contactoImpGuid',
            )
          : Uri.https(
              // dotenv.get('URL', fallback: 'localhost:3001'),
              'jbm-api.nikel.es',
              'api/v1/sync/clientes/$clienteId/contactos/$contactoImpGuid',
            );

      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${_usuario.provisionalToken}'},
        ),
      );
      if (response.statusCode == 200) {
        final clienteContactoHaveBeenTratado = response.data['data'] as bool;

        return clienteContactoHaveBeenTratado;
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<bool> _checkIfClienteDireccionImpHaveBeenTratada(
      String clienteId, String direccionImpGuid) async {
    try {
      final requestUri = (_usuario!.test)
          ? Uri.http(
              // dotenv.get('URL', fallback: 'localhost:3001'),
              'jbm-api-test.nikel.es:8080',
              'api/v1/sync/clientes/$clienteId/direcciones/$direccionImpGuid',
            )
          : Uri.https(
              // dotenv.get('URL', fallback: 'localhost:3001'),
              'jbm-api.nikel.es',
              'api/v1/sync/clientes/$clienteId/direcciones/$direccionImpGuid',
            );

      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${_usuario.provisionalToken}'},
        ),
      );
      if (response.statusCode == 200) {
        final clienteDireccionHaveBeenTratada = response.data['data'] as bool;

        return clienteDireccionHaveBeenTratada;
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<bool> checkIfPedidosHaSidoImportado(String pedidoVentaAppId) async {
    final pedidoExistInSyncTable =
        await (_remoteDb.select(_remoteDb.pedidoVentaTable)
              ..where((tbl) => tbl.pedidoVentaAppId.equals(pedidoVentaAppId)))
            .getSingleOrNull();

    if (pedidoExistInSyncTable == null) {
      return checkPedidoImportado(pedidoVentaAppId);
    }

    return true;
  }

  Future<bool> checkPedidoImportado(String pedidoVentaAppId) async {
    try {
      final requestUri = (_usuario!.test)
          ? Uri.http(
              // dotenv.get('URL', fallback: 'localhost:3001'),
              'jbm-api-test.nikel.es:8080',
              'api/v1/sync/pedidos/$pedidoVentaAppId/check',
            )
          : Uri.https(
              // dotenv.get('URL', fallback: 'localhost:3001'),
              'jbm-api.nikel.es',
              'api/v1/sync/pedidos/$pedidoVentaAppId/check',
            );

      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${_usuario.provisionalToken}'},
        ),
      );
      if (response.statusCode == 200) {
        final pedidoHaSidoImportado = response.data['data'] as bool;

        return pedidoHaSidoImportado;
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<void> checkBorradores() async {
    final borradores = await (_localDb.select(_localDb.pedidoVentaLocalTable)
          ..where((tbl) => tbl.borrador.equals('S')))
        .get();

    for (var i = 0; i < borradores.length; i++) {
      if (borradores[i].enviada == 'S' || borradores[i].tratada == 'S') {
        await _localDb
            .into(_localDb.pedidoVentaLocalTable)
            .insertOnConflictUpdate(borradores[i].copyWith(borrador: 'N'));
      }
    }
  }

  Future<void> insetLog(
      {required String level, required String message, String? error}) async {
    final appLog = Log(
      level: level,
      message: message,
      appId: _usuario!.packageName,
      appBuild: _usuario.buildNumber,
      appBuildName: _usuario.version,
      device: _usuario.deviceInfo,
      userId: _usuario.id,
      timestamp: DateTime.now().toUtc(),
    );

    final logDto = LogDTO.fromDomain(appLog);

    try {
      await _localDb.into(_localDb.logTable).insert(logDto);
      final logsDtoList = await _localDb.select(_localDb.logTable).get();
      for (var i = 0; i < logsDtoList.length; i++) {
        final responseLogDto = await remotePostLogs(logDto: logsDtoList[i]);
        await (_localDb.delete(_localDb.logTable)
              ..where((tbl) => tbl.id.equals(responseLogDto.id!)))
            .go();
      }
    } catch (e) {
      log.e(e);
    }
  }

  Future<LogDTO> remotePostLogs({required LogDTO logDto}) async {
    try {
      final requestUri =
          (_usuario!.test) ? remoteLogTestEndpoint : remoteLogEndpoint;

      final response = await _dio.postUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${_usuario.provisionalToken}'},
        ),
        data: jsonEncode(logDto.toJson()),
      );
      if (response.statusCode == 200) {
        final json = response.data['data'] as Map<String, dynamic>;

        return LogDTO.fromJson(json);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deletePedidosAntiguos() async {
    final monthBeforeDate = DateTime.now().add(const Duration(days: -30));

    final pedidosAntiguosLista = await (_localDb
            .select(_localDb.pedidoVentaLocalTable)
          ..where((tbl) => tbl.fechaAlta.isSmallerThanValue(monthBeforeDate)))
        .get();

    for (var i = 0; i < pedidosAntiguosLista.length; i++) {
      await deletePedidoVentaLineasAntiguas(
          pedidosAntiguosLista[i].pedidoVentaAppId);
      await (_localDb.delete(_localDb.pedidoVentaLocalTable)
            ..where((tbl) => tbl.pedidoVentaAppId
                .equals(pedidosAntiguosLista[i].pedidoVentaAppId)))
          .go();
    }
  }

  Future<void> deletePedidoVentaLineasAntiguas(String pedidoVentaAppId) async {
    await (_localDb.delete(_localDb.pedidoVentaLineaLocalTable)
          ..where((tbl) => tbl.pedidoVentaAppId.equals(pedidoVentaAppId)))
        .go();
  }

  Future<void> syncCatalogos({required bool isInMainThread}) async {
    try {
      await insetLog(level: 'I', message: 'Init catalogs sync');

      final favoritesCatalogsDtoList = await _getFavoritesCatalogDtoList();

      if (isInMainThread) {
        await _removeAllCatalogsFiles(
            documentDirectory ?? await getApplicationDocumentsDirectory());
      }

      if (favoritesCatalogsDtoList.isNotEmpty) {
        await downloadFavoritesCatalogs(favoritesCatalogsDtoList,
            documentDirectory ?? await getApplicationDocumentsDirectory());
      }
      if (!isInMainThread) {
        await removeDeletedCatalogs(favoritesCatalogsDtoList,
            documentDirectory ?? await getApplicationDocumentsDirectory());
      }

      await insetLog(level: 'I', message: 'End catalogs sync');
    } catch (e) {
      await insetLog(level: 'I', message: 'Error catalog sync');

      rethrow;
    }
  }

  Future<void> downloadFavoritesCatalogs(
      List<CatalogoFavoritoDTO> favoritesCatalogsDtoList,
      Directory documentDirectory) async {
    for (var i = 0; i < favoritesCatalogsDtoList.length; i++) {
      final adjuntoParam = AdjuntoParam(
        id: favoritesCatalogsDtoList[i].catalogoId.toString(),
        nombreArchivo: favoritesCatalogsDtoList[i].nombreArchivo,
      );
      if (adjuntoParam.nombreArchivo != null &&
          !_fileExistInLocal(adjuntoParam, documentDirectory)) {
        final query = {'NOMBRE_ARCHIVO': adjuntoParam.nombreArchivo};
        final data = await _remoteGetAttachment(
            requestUri: Uri.http(
              'jbm-api.nikel.es',
              'api/v1/online/adjunto/catalogo/${adjuntoParam.id}',
              query,
            ),
            provisionalToken: _usuario!.provisionalToken);
        await saveDocumentInLocal(data, adjuntoParam, documentDirectory);
      }
    }
  }

  Future<List<CatalogoFavoritoDTO>> _getFavoritesCatalogDtoList() async {
    return _localDb.select(_localDb.catalogoFavoritoTable).get();
  }

  Future<File> saveDocumentInLocal(
      List<int> data, AdjuntoParam adjuntoParam, Directory directory) async {
    try {
      final file = await File(
              '${directory.path}/catalogos/${adjuntoParam.id}/${adjuntoParam.nombreArchivo}')
          .create(recursive: true);

      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(data);
      await raf.close();

      final document = PdfDocument(inputBytes: file.readAsBytesSync());

      for (var i = 0; i < document.pages.count; i++) {
        final pageSize = document.pages[i].size;
        document.pages[i].graphics.drawString(
          _usuario!.id,
          PdfStandardFont(PdfFontFamily.helvetica, 9),
          brush: PdfSolidBrush(PdfColor(105, 105, 105)),
          bounds: Rect.fromLTWH(8, pageSize.height - 16, 50, 20),
        );
      }
      final savedFile = await document.save();

      await file.writeAsBytes(savedFile);
      document.dispose();

      return file;
    } catch (e) {
      throw AppException.createFileInCacheFailure(e.toString());
    }
  }

  Future<void> removeDeletedCatalogs(
      List<CatalogoFavoritoDTO> favoritesCatalogsDtoList,
      Directory documentDirectory) async {
    final getCatalogoDirectory =
        Directory('${documentDirectory.path}/catalogos/');

    if (getCatalogoDirectory.existsSync()) {
      final getFilesList = getCatalogoDirectory.listSync();

      for (var i = 0; i < getFilesList.length; i++) {
        final fileCatalogoId = getFilesList[i].path.split('/').last;
        var existeEnFavoritos = false;
        for (var j = 0; j < favoritesCatalogsDtoList.length; j++) {
          if (fileCatalogoId ==
              favoritesCatalogsDtoList[j].catalogoId.toString()) {
            existeEnFavoritos = true;
          }
        }
        if (!existeEnFavoritos && getFilesList[i] is Directory) {
          getFilesList[i].deleteSync(recursive: true);
        }
      }
    }
  }

  // Future<void> _remoteFavoriteFileFromLocal(
  //     AdjuntoParam adjuntoParam, Directory documentDirectory) async {
  //   final file = File(
  //       '${documentDirectory.path}/catalogos/${adjuntoParam.id}/${adjuntoParam.nombreArchivo}');

  //   if (file.existsSync()) {
  //     file.deleteSync(recursive: true);
  //   }
  // }

  bool _fileExistInLocal(AdjuntoParam adjuntoParam, Directory directory) {
    final filePath =
        '${directory.path}/catalogos/${adjuntoParam.id}/${adjuntoParam.nombreArchivo}';

    final file = File(filePath);

    return file.existsSync();
  }

  Future<List<int>> _remoteGetAttachment({
    required Uri requestUri,
    required String provisionalToken,
  }) async {
    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
          responseType: ResponseType.bytes,
          receiveDataWhenStatusError: true,
        ),
      );
      if (response.statusCode == 200) {
        return response.data as List<int>;
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }

  Future<void> _removeAllCatalogsFiles(Directory directory) async {
    Directory('${directory.path}/catalogos').deleteSync(recursive: true);
  }
}
