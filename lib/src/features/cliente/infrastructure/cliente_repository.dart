import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/app.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_adjunto_dto.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../usuario/infrastructure/usuario_service.dart';
import '../domain/cliente.dart';
import '../domain/cliente_adjunto.dart';
import '../domain/cliente_contacto.dart';
import '../domain/cliente_descuento.dart';
import '../domain/cliente_direccion.dart';
import '../domain/cliente_grupo_neto.dart';
import '../domain/cliente_pago_pendiente.dart';
import '../domain/cliente_precio_neto.dart';
import '../domain/cliente_rappel.dart';

final clienteRepositoryProvider = Provider.autoDispose<ClienteRepository>(
  (ref) {
    final db = ref.watch(appDatabaseProvider);
    final dio = ref.watch(dioProvider);
    return ClienteRepository(db, dio);
  },
);

final clienteListaStreamProvider =
    StreamProvider.autoDispose.family<List<Cliente>, int>((ref, page) async* {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  yield* clienteRepository.watchClienteLista(
    usuarioId: usuario!.id,
    page: page,
  );
});

final clienteProvider =
    FutureProvider.autoDispose.family<Cliente, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClienteById(clienteId: clienteId);
});

final clienteDireccionStreamProvider = StreamProvider.autoDispose
    .family<List<ClienteDireccion>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClienteDireccionById(clienteId: clienteId);
});

final clienteContactoProvider = FutureProvider.autoDispose
    .family<List<ClienteContacto>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClienteContactoById(clienteId: clienteId);
});

final clienteDescuentoProvider = FutureProvider.autoDispose
    .family<List<ClienteDescuento>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClienteDescuentoById(clienteId: clienteId);
});

final clienteGrupoNetoProvider = FutureProvider.autoDispose
    .family<List<ClienteGrupoNeto>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClienteGrupoNetoById(clienteId: clienteId);
});

final clientePrecioNetoProvider = FutureProvider.autoDispose
    .family<List<ClientePrecioNeto>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClientePrecioNetoById(clienteId: clienteId);
});

final clientePendientePagoProvider = FutureProvider.autoDispose
    .family<List<ClientePagoPendiente>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClientePagoPendienteById(clienteId: clienteId);
});

final clienteRappelProvider = FutureProvider.autoDispose
    .family<List<ClienteRappel>, String>((ref, clienteId) {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  return clienteRepository.getClienteRappelById(clienteId: clienteId);
});

final clienteAdjuntoProvider = FutureProvider.autoDispose
    .family<List<ClienteAdjunto>, String>((ref, clienteId) async {
  final clienteRepository = ref.watch(clienteRepositoryProvider);
  final usuario = await ref.watch(usuarioServiceProvider).getSignedInUsuario();
  return clienteRepository.getClienteAdjuntoById(
      clienteId: clienteId, provisionalToken: usuario!.provisionalToken);
});

const pageSize = 100;

class ClienteRepository {
  final AppDatabase _db;
  final Dio _dio;

  ClienteRepository(this._db, this._dio);

  Stream<List<Cliente>> watchClienteLista(
      {required String usuarioId, required int page, String? searchText}) {
    try {
      final query = _db.select(_db.clienteTable).join([
        innerJoin(_db.clienteUsuarioTable,
            _db.clienteUsuarioTable.clienteId.equalsExp(_db.clienteTable.id)),
        innerJoin(_db.paisTable,
            _db.paisTable.id.equalsExp(_db.clienteTable.paisFiscalId)),
        innerJoin(_db.divisaTable,
            _db.divisaTable.id.equalsExp(_db.clienteTable.divisaId)),
        innerJoin(
            _db.metodoDeCobroTable,
            _db.metodoDeCobroTable.id
                .equalsExp(_db.clienteTable.metodoDeCobroId)),
        innerJoin(_db.plazoDeCobroTable,
            _db.plazoDeCobroTable.id.equalsExp(_db.clienteTable.plazoDeCobroId))
      ]);

      if (searchText != null) {
        query.where(_db.clienteUsuarioTable.usuarioId.equals(usuarioId) &
            (_db.clienteTable.nombreCliente.like('%$searchText%') |
                _db.clienteTable.nombreCliente
                    .like('%${searchText.toUpperCase()}%')));
      } else {
        query.where(_db.clienteUsuarioTable.usuarioId.equals(usuarioId));
      }

      query.limit(pageSize, offset: (page == 1) ? 0 : (page * pageSize));
      query.orderBy([
        OrderingTerm.asc(_db.clienteTable.nombreCliente),
        OrderingTerm.asc(_db.clienteTable.id)
      ]);

      return query.asyncMap((row) async {
        final clienteDTO = row.readTable(_db.clienteTable);
        final paisDTO = row.readTableOrNull(_db.paisTable);
        final divisaDTO = row.readTableOrNull(_db.divisaTable);
        final metodoDeCobroDTO = row.readTableOrNull(_db.metodoDeCobroTable);
        final plazoDeCobroDTO = row.readTableOrNull(_db.plazoDeCobroTable);

        return clienteDTO.toDomain(
          paisFiscal: paisDTO?.toDomain(),
          divisa: divisaDTO?.toDomain(),
          metodoDeCobro: metodoDeCobroDTO?.toDomain(),
          plazoDeCobro: plazoDeCobroDTO?.toDomain(),
        );
      }).watch();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<Cliente> getClienteById({required String clienteId}) async {
    try {
      final query =
          (_db.select(_db.clienteTable)..where((t) => t.id.equals(clienteId)));

      return query.asyncMap((row) async {
        final paisDTO = await (_db.select(_db.paisTable)
              ..where((t) => t.id.equals(row.paisFiscalId ?? '')))
            .getSingleOrNull();
        final divisaDTO = await (_db.select(_db.divisaTable)
              ..where((t) => t.id.equals(row.divisaId ?? '')))
            .getSingleOrNull();
        final metodoDeCobroDTO = await (_db.select(_db.metodoDeCobroTable)
              ..where((t) => t.id.equals(row.metodoDeCobroId ?? '')))
            .getSingleOrNull();
        final plazoDeCobroDTO = await (_db.select(_db.plazoDeCobroTable)
              ..where((t) => t.id.equals(row.plazoDeCobroId ?? '')))
            .getSingleOrNull();
        return row.toDomain(
          paisFiscal: paisDTO?.toDomain(),
          divisa: divisaDTO?.toDomain(),
          metodoDeCobro: metodoDeCobroDTO?.toDomain(),
          plazoDeCobro: plazoDeCobroDTO?.toDomain(),
        );
      }).getSingle();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Stream<List<ClienteDireccion>> getClienteDireccionById(
      {required String clienteId}) {
    try {
      final query = (_db.select(_db.clienteDireccionTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.asyncMap((row) async {
        final paisDTO = await (_db.select(_db.paisTable)
              ..where((t) => t.id.equals(row.paisId ?? '')))
            .getSingleOrNull();
        return row.toDomain(
          pais: paisDTO?.toDomain(),
        );
      }).watch();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteContacto>> getClienteContactoById(
      {required String clienteId}) {
    try {
      final query = (_db.select(_db.clienteContactoTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteDescuento>> getClienteDescuentoById(
      {required String clienteId}) {
    try {
      final query = (_db.select(_db.clienteDescuentoTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.asyncMap((row) async {
        final familiaDTO = await (_db.select(_db.familiaTable)
              ..where((t) => t.id.equals(row.familiaId)))
            .getSingle();
        final subfamiliaDTO = await (_db.select(_db.subfamiliaTable)
              ..where((t) => t.id.equals(row.subfamiliaId)))
            .getSingle();
        return row.toDomain(
            familia: familiaDTO.toDomain(),
            subfamilia: subfamiliaDTO.toDomain());
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClientePrecioNeto>> getClientePrecioNetoById(
      {required String clienteId}) {
    try {
      final query = (_db.select(_db.clientePrecioNetoTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteGrupoNeto>> getClienteGrupoNetoById(
      {required String clienteId}) {
    try {
      final query = (_db.select(_db.clienteGrupoNetoTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteRappel>> getClienteRappelById(
      {required String clienteId}) {
    try {
      final query = (_db.select(_db.clienteRappelTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClientePagoPendiente>> getClientePagoPendienteById(
      {required String clienteId}) {
    try {
      final query = (_db.select(_db.clientePagoPendienteTable)
        ..where((t) => t.clienteId.equals(clienteId)));

      return query.asyncMap((row) async {
        final metodoDeCobroDTO = await (_db.select(_db.metodoDeCobroTable)
              ..where((t) => t.id.equals(row.metodoDeCobroId ?? '')))
            .getSingleOrNull();

        return row.toDomain(metodoDeCobro: metodoDeCobroDTO?.toDomain());
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteAdjunto>> getClienteAdjuntoById(
      {required String clienteId, required String provisionalToken}) async {
    try {
      final query = {'CLIENTE_ID': clienteId};
      final clienteAdjuntoDTOList = await _remoteGetClienteAdjunto(
          requestUri: Uri.http(
            dotenv.get('URL', fallback: 'localhost:3001'),
            'api/v1/online/cliente/adjuntos',
            query,
          ),
          jsonDataSelector: (json) => json['data'] as List<dynamic>,
          provisionalToken: provisionalToken);

      return clienteAdjuntoDTOList.map((e) => e.toDomain()).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ClienteAdjuntoDTO>> _remoteGetClienteAdjunto(
      {required Uri requestUri,
      required dynamic Function(dynamic json) jsonDataSelector,
      required String provisionalToken}) async {
    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data) as List<dynamic>;
        return data.map((e) => ClienteAdjuntoDTO.fromJson(e)).toList();
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } on DioError catch (e) {
      String? errorDetalle;
      final responseErrorJson =
          e.response?.data['detalle'] ?? e.response?.data['message'] as String?;
      if (responseErrorJson != null) {
        errorDetalle = responseErrorJson;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, errorDetalle ?? '');
      } else {
        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, e.response?.statusMessage ?? '');
      }
    } catch (e) {
      rethrow;
    }
  }
}
