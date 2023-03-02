import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/remote_database.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/dio_extension.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/infrastructure/visita_local_dto.dart';

import '../../../core/domain/entity_id_is_local_param.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/infrastructure/local_database.dart' as local;
import '../../../core/presentation/app.dart';
import '../../usuario/domain/usuario.dart';
import '../domain/visita.dart';

final visitaRepositoryProvider = Provider.autoDispose<VisitaRepository>(
  (ref) {
    final remoteDb = ref.watch(appRemoteDatabaseProvider);
    final localDb = ref.watch(local.appLocalDatabaseProvider);

    final dio = ref.watch(dioProvider);
    final user = ref.watch(usuarioNotifierProvider);
    return VisitaRepository(remoteDb, localDb, dio, user);
  },
);

final visitaLastSyncDateProvider =
    FutureProvider.autoDispose<DateTime>((ref) async {
  final visitaRepository = ref.watch(visitaRepositoryProvider);
  return visitaRepository.getLastSyncDate();
});

final visitaProvider = FutureProvider.autoDispose
    .family<Visita, EntityIdIsLocalParam>((ref, visitaIdIsLocalParam) {
  final visitaRepository = ref.watch(visitaRepositoryProvider);
  return visitaRepository.getVisitaById(
      visitaIdIsLocalParam: visitaIdIsLocalParam);
});

class VisitaRepository {
  static const pageSize = 100;
  final RemoteAppDatabase _remoteDb;
  final local.LocalAppDatabase _localDb;

  final Dio _dio;
  final Usuario? _usuario;

  VisitaRepository(this._remoteDb, this._localDb, this._dio, this._usuario);

  Future<List<Visita>> getVisitaList({
    required int page,
    required String searchText,
  }) async {
    try {
      final List<Visita> visitas = [];
      if (page == 0) {
        final visitasLocal = await getVisitasLocal(
          searchText: searchText,
          usuarioId: _usuario!.id,
        );
        visitas.addAll(visitasLocal);
      }
      final visitasSync = await getVisitas(
          usuarioId: _usuario!.id, page: page, searchText: searchText);

      visitas.addAll(visitasSync);
      return visitas;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<int> getVisitasCountList({
    required String searchText,
  }) async {
    try {
      final visitasLocalCount = await getVisitasLocalCount(
        searchText: searchText,
        usuarioId: _usuario!.id,
      );

      final visitasSyncCount = await getVisitasCount(
          usuarioId: _usuario!.id, searchText: searchText);

      return visitasLocalCount + visitasSyncCount;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<Visita>> getVisitaListByCliente({
    required String clienteId,
  }) async {
    try {
      final List<Visita> vistiasListByCliente = [];
      final visitasLocal = await getVisitasLocal(
        searchText: '',
        usuarioId: _usuario!.id,
        clienteId: clienteId,
      );
      vistiasListByCliente.addAll(visitasLocal);

      final visitas = await getVisitas(
          usuarioId: _usuario!.id,
          page: 0,
          searchText: '',
          clienteId: clienteId);

      vistiasListByCliente.addAll(visitas);
      return vistiasListByCliente;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<Visita> getVisitaById(
      {required EntityIdIsLocalParam visitaIdIsLocalParam}) async {
    try {
      if (!visitaIdIsLocalParam.isLocal) {
        return await getVisita(visitaId: visitaIdIsLocalParam.id);
      } else {
        return await getVisitaLocal(visitaAppId: visitaIdIsLocalParam.id);
      }
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<void> deleteVisita(String visitaAppId) async {
    (_localDb.delete(_localDb.visitaLocalTable))
        .where((tbl) => tbl.visitaAppId.equals(visitaAppId));
  }

  Future<void> upsertVisita(Visita visitaLocal) async {
    try {
      final visitaLocalDto = VisitaLocalDTO.fromDomain(visitaLocal);
      final json = jsonEncode(visitaLocalDto.toJson());
      print(json);
      await insertVisitaInDb(visitaLocalDto);

      try {
        final visitaLocalEnviada =
            await _remoteCreateVisita(visitaLocalDto, _usuario!.test);
        await updateVisitaInDB(visitaLocalDto: visitaLocalEnviada);
      } catch (e) {
        if (e is AppException) {
          e.maybeWhen(
              orElse: () {},
              notConnection: () =>
                  updateWithError(visitaLocalDto, e.details.message),
              restApiFailure: (error, _) =>
                  updateWithError(visitaLocalDto, e.details.message));
          return;
        }
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateWithError(
      VisitaLocalDTO visitaLocalDto, String errorMessage) async {
    try {
      (_localDb.update(_localDb.visitaLocalTable)
            ..where(
                (tbl) => tbl.visitaAppId.equals(visitaLocalDto.visitaAppId!)))
          .write(local.VisitaLocalTableCompanion(
              errorSyncMessage: Value(errorMessage)));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> insertVisitaInDb(VisitaLocalDTO visitaLocalDto) async {
    try {
      await _localDb
          .into(_localDb.visitaLocalTable)
          .insertOnConflictUpdate(visitaLocalDto);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<VisitaLocalDTO> _remoteCreateVisita(
      VisitaLocalDTO visitaLocalDto, bool test) async {
    try {
      final requestUri = (test)
          ? Uri.http(
              dotenv.get('URLTEST', fallback: 'localhost:3001'),
              'api/v1/online/v3/visitas',
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/v3/visitas',
            );

      final response = await _dio.postUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${_usuario?.provisionalToken}'},
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
    } on DioError catch (e) {
      String? errorDetalle;
      if (e.isNoConnectionError) {
        throw const AppException.notConnection();
      }
      final responseErrorJson = (e.response?.data is List<int>)
          ? e.response?.statusMessage
          : e.response?.data['detalle'] ?? e.response?.data['message'];
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

  Future<void> updateVisitaInDB(
      {required VisitaLocalDTO visitaLocalDto}) async {
    try {
      await _localDb.update(_localDb.visitaLocalTable).replace(visitaLocalDto);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<List<Visita>> getVisitasLocal(
      {required String searchText,
      required String usuarioId,
      String? clienteId}) async {
    try {
      final List<Visita> visitaLocalList = [];
      final query = _localDb.select(_localDb.visitaLocalTable);

      query.where((tbl) => tbl.tratada.equals('N'));

      if (searchText != '') {
        final busqueda = searchText.split(' ');
        Expression<bool>? predicate;
        for (var i = 0; i < busqueda.length; i++) {
          if (predicate == null) {
            predicate =
                (_localDb.visitaLocalTable.resumen.like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteId.like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalNombre
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalEmail
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalTelefono
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalPoblacion
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.contacto.like('%$searchText%'));
          } else {
            predicate = predicate &
                (_localDb.visitaLocalTable.resumen.like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteId.like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalNombre
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalEmail
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalTelefono
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalPoblacion
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.contacto.like('%$searchText%'));
          }
        }
        query.where((tbl) => predicate!);
      }

      if (clienteId != null) {
        query.where((tbl) => tbl.clienteId.equals(clienteId));
      }

      query.orderBy([
        (tbl) => OrderingTerm.asc(tbl.enviada),
        (tbl) => OrderingTerm.desc(tbl.fecha),
      ]);

      final visitaLocalDTOList = await query.get();

      for (var i = 0; i < visitaLocalDTOList.length; i++) {
        final visitaLocalDTO = visitaLocalDTOList[i];
        final clienteUsuarioDTO =
            await (_remoteDb.select(_remoteDb.clienteUsuarioTable)
                  ..where((tbl) =>
                      tbl.clienteId.equalsNullable(visitaLocalDTO.clienteId) &
                      tbl.usuarioId.equals(usuarioId)))
                .getSingleOrNull();

        if (clienteUsuarioDTO != null ||
            (visitaLocalDTO.numEmpl == usuarioId &&
                visitaLocalDTO.clienteId == null)) {
          final clienteDTO = await (_remoteDb.select(_remoteDb.clienteTable)
                ..where(
                    (tbl) => tbl.id.equalsNullable(visitaLocalDTO.clienteId)))
              .getSingleOrNull();

          visitaLocalList.add(visitaLocalDTO.toDomain(
              nombreCliente: clienteDTO?.nombreCliente));
        }
      }

      return visitaLocalList;
    } catch (e) {
      rethrow;
    }
  }

  Future<int> getVisitasLocalCount(
      {required String searchText,
      required String usuarioId,
      String? clienteId}) async {
    try {
      //TODO Count visita correctamente.

      // final countExp = _localDb.visitaLocalTable.visitaAppId.count();

      // final query = _remoteDb.selectOnly(_remoteDb.visitaLocalTable).join([
      //   leftOuterJoin(
      //     _remoteDb.clienteTable,
      //     _remoteDb.clienteTable.id
      //         .equalsExp(_remoteDb.visitaLocalTable.clienteId),
      //   ),
      //   leftOuterJoin(
      //     _remoteDb.clienteUsuarioTable,
      //     _remoteDb.clienteUsuarioTable.clienteId
      //         .equalsExp(_remoteDb.clienteTable.id),
      //   )
      // ]);

      // query.where(_remoteDb.visitaLocalTable.tratada.equals('N') &
      //     (_remoteDb.clienteUsuarioTable.usuarioId.equals(usuarioId) |
      //         (_remoteDb.visitaLocalTable.numEmpl.equals(usuarioId) &
      //             _remoteDb.visitaLocalTable.clienteId.isNull())));

      // if (searchText != '') {
      //   final busqueda = searchText.split(' ');
      //   Expression<bool>? predicate;
      //   for (var i = 0; i < busqueda.length; i++) {
      //     if (predicate == null) {
      //       predicate =
      //           (_remoteDb.visitaLocalTable.resumen.like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteId.like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalNombre
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalEmail
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalTelefono
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalPoblacion
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.contacto.like('%$searchText%'));
      //     } else {
      //       predicate = predicate &
      //           (_remoteDb.visitaLocalTable.resumen.like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteId.like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalNombre
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalEmail
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalTelefono
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalPoblacion
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.contacto.like('%$searchText%'));
      //     }
      //   }
      //   query.where(predicate!);
      // }

      // if (clienteId != null) {
      //   query.where(_remoteDb.visitaLocalTable.clienteId.equals(clienteId));
      // }

      // query.addColumns([countExp]);

      // final count = await query.map((row) => row.read(countExp)).getSingle();
      // return count ?? 0;

      final visitaLocalList = await getVisitasLocal(
        searchText: searchText,
        usuarioId: usuarioId,
        clienteId: clienteId,
      );
      return visitaLocalList.length;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Visita>> getVisitas(
      {required String usuarioId,
      required int page,
      required String searchText,
      String? clienteId}) async {
    final query = _remoteDb.select(_remoteDb.visitaTable).join([
      leftOuterJoin(
        _remoteDb.clienteTable,
        _remoteDb.clienteTable.id.equalsExp(_remoteDb.visitaTable.clienteId),
      ),
      leftOuterJoin(
        _remoteDb.clienteUsuarioTable,
        _remoteDb.clienteUsuarioTable.clienteId
            .equalsExp(_remoteDb.visitaTable.clienteId),
      )
    ]);

    query.where(_remoteDb.clienteUsuarioTable.usuarioId.equals(usuarioId) |
        (_remoteDb.visitaTable.numEmpl.equals(usuarioId) &
            _remoteDb.visitaTable.clienteId.isNull()));

    if (searchText != '') {
      final busqueda = searchText.split(' ');
      Expression<bool>? predicate;
      for (var i = 0; i < busqueda.length; i++) {
        if (predicate == null) {
          predicate = (_remoteDb.visitaTable.resumen.like('%$searchText%') |
              _remoteDb.visitaTable.clienteId.like('%$searchText%') |
              _remoteDb.clienteTable.nombreCliente.like('%$searchText%') |
              _remoteDb.clienteTable.nombreFiscal.like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalNombre
                  .like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalEmail
                  .like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalTelefono
                  .like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalPoblacion
                  .like('%$searchText%') |
              _remoteDb.visitaTable.contacto.like('%$searchText%'));
        } else {
          predicate = predicate &
              (_remoteDb.visitaTable.resumen.like('%$searchText%') |
                  _remoteDb.visitaTable.clienteId.like('%$searchText%') |
                  _remoteDb.clienteTable.nombreCliente.like('%$searchText%') |
                  _remoteDb.clienteTable.nombreFiscal.like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalNombre
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalEmail
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalTelefono
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalPoblacion
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.contacto.like('%$searchText%'));
        }
      }
      query.where(predicate!);
    }

    if (clienteId != null) {
      query.where(_remoteDb.visitaTable.clienteId.equals(clienteId));
    }

    query.limit(pageSize, offset: page * pageSize);

    query.orderBy([
      OrderingTerm.desc(_remoteDb.visitaTable.fecha),
    ]);

    return query.asyncMap((row) async {
      final clienteDTO = row.readTableOrNull(_remoteDb.clienteTable);

      final visitaDTO = row.readTable(_remoteDb.visitaTable);
      return visitaDTO.toDomain(nombreCliente: clienteDTO?.nombreCliente);
    }).get();
  }

  Future<int> getVisitasCount(
      {required String usuarioId,
      required String searchText,
      String? clienteId}) async {
    final countExp = _remoteDb.visitaTable.id.count();

    final query = _remoteDb.selectOnly(_remoteDb.visitaTable).join([
      leftOuterJoin(
        _remoteDb.clienteTable,
        _remoteDb.clienteTable.id.equalsExp(_remoteDb.visitaTable.clienteId),
      ),
      leftOuterJoin(
        _remoteDb.clienteUsuarioTable,
        _remoteDb.clienteUsuarioTable.clienteId
            .equalsExp(_remoteDb.visitaTable.clienteId),
      )
    ]);

    query.where(_remoteDb.clienteUsuarioTable.usuarioId.equals(usuarioId) |
        (_remoteDb.visitaTable.numEmpl.equals(usuarioId) &
            _remoteDb.visitaTable.clienteId.isNull()));

    if (searchText != '') {
      final busqueda = searchText.split(' ');
      Expression<bool>? predicate;
      for (var i = 0; i < busqueda.length; i++) {
        if (predicate == null) {
          predicate = (_remoteDb.visitaTable.resumen.like('%$searchText%') |
              _remoteDb.visitaTable.clienteId.like('%$searchText%') |
              _remoteDb.clienteTable.nombreCliente.like('%$searchText%') |
              _remoteDb.clienteTable.nombreFiscal.like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalNombre
                  .like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalEmail
                  .like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalTelefono
                  .like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalPoblacion
                  .like('%$searchText%') |
              _remoteDb.visitaTable.contacto.like('%$searchText%'));
        } else {
          predicate = predicate &
              (_remoteDb.visitaTable.resumen.like('%$searchText%') |
                  _remoteDb.visitaTable.clienteId.like('%$searchText%') |
                  _remoteDb.clienteTable.nombreCliente.like('%$searchText%') |
                  _remoteDb.clienteTable.nombreFiscal.like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalNombre
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalEmail
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalTelefono
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalPoblacion
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.contacto.like('%$searchText%'));
        }
      }
      query.where(predicate!);
    }

    if (clienteId != null) {
      query.where(_remoteDb.visitaTable.clienteId.equals(clienteId));
    }

    query.addColumns([countExp]);

    final count = await query.map((row) => row.read(countExp)).getSingle();
    return count ?? 0;
  }

  Future<Visita> getVisita({required String visitaId}) async {
    final query = _remoteDb.select(_remoteDb.visitaTable).join([
      leftOuterJoin(
        _remoteDb.clienteTable,
        _remoteDb.clienteTable.id.equalsExp(_remoteDb.visitaTable.clienteId),
      )
    ]);
    query.where(_remoteDb.visitaTable.id.equals(visitaId));

    return query.asyncMap((row) async {
      final clienteDTO = row.readTableOrNull(_remoteDb.clienteTable);

      final visitaDTO = row.readTable(_remoteDb.visitaTable);
      return visitaDTO.toDomain(nombreCliente: clienteDTO?.nombreCliente);
    }).getSingle();
  }

  Future<Visita> getVisitaLocal({required String visitaAppId}) async {
    final visitaDTO = await (_localDb.select(_localDb.visitaLocalTable)
          ..where((tbl) => tbl.visitaAppId.equals(visitaAppId)))
        .getSingle();

    final clienteDTO = await (_remoteDb.select(_remoteDb.clienteTable)
          ..where((tbl) => tbl.id.equalsNullable(visitaDTO.clienteId)))
        .getSingleOrNull();

    return visitaDTO.toDomain(nombreCliente: clienteDTO?.nombreCliente);
  }

  Future<DateTime> getLastSyncDate() async {
    try {
      final lastSyncDTO =
          await _localDb.select(_localDb.syncDateTimeTable).getSingle();
      return lastSyncDTO.visitaUltimaSync;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> existClientePotencialPhone(String phoneValue) async {
    try {
      final visitasList = await (_remoteDb.select(_remoteDb.visitaTable)
            ..where((tbl) => tbl.clienteProvisionalTelefono.equals(phoneValue)))
          .get();

      return visitasList.isNotEmpty;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> existClientePotencialEmail(String emailValue) async {
    try {
      final visitasList = await (_remoteDb.select(_remoteDb.visitaTable)
            ..where((tbl) => tbl.clienteProvisionalEmail.equals(emailValue)))
          .get();

      return visitasList.isNotEmpty;
    } catch (e) {
      rethrow;
    }
  }
}
